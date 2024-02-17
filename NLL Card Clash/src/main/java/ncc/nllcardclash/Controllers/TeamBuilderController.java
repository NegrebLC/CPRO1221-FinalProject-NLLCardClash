package ncc.nllcardclash.Controllers;

import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.scene.control.ListView;
import ncc.nllcardclash.Main;
import ncc.nllcardclash.Model.Card;
import ncc.nllcardclash.Model.CardDAO;
import ncc.nllcardclash.Model.UserTeam;
import ncc.nllcardclash.Model.UserTeamDAO;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class TeamBuilderController {
    @FXML
    public ListView<String> selectedPlayersListView; // ListView for selected players
    @FXML
    public ListView<String> availablePlayersListView; // ListView for available players

    private Map<String, Card> cardMap = new HashMap<>(); // Map to store player information
    private List<Card> selectedPlayers = new ArrayList<>(); // List to store selected players

    public TeamBuilderController() throws SQLException, ClassNotFoundException {
    }

    @FXML
    public void initialize() throws SQLException {

        // Fetch available players from the database and display in the ListView
        ObservableList<String> availablePlayers = FXCollections.observableArrayList();

        for (Card card : CardDAO.fetchAvailablePlayers()) {
            // Create player information strings based on attributes
            String playerInfo = (card.getOffenseAttribute() == 0) ?
                    "Player Name: " + card.getPlayerName() + "\n Preferred Position: " + card.getPrefPosition() +
                            "\n Goalie Attribute: " + card.getGoalieAttribute() :
                    "Player Name: " + card.getPlayerName() + "\n Preferred Position: " + card.getPrefPosition() +
                            "\n Offense Attribute: " + card.getOffenseAttribute() +
                            "\n Defense Attribute: " + card.getDefenceAttribute() +
                            "\n Overall Rating: " + card.getOverallRating();

            // Add player info to the ObservableList and map it with the card
            availablePlayers.add(playerInfo);
            cardMap.put(playerInfo, card);
        }

        availablePlayersListView.setItems(availablePlayers);
    }

    // Adds a player to Users Team
    public void addPlayerToTeam(ActionEvent actionEvent) {
        String selectedPlayerString = availablePlayersListView.getSelectionModel().getSelectedItem();
        if (selectedPlayerString != null) {
            Card selectedCard = cardMap.get(selectedPlayerString);
            if (selectedCard != null) {
                selectedPlayers.add(selectedCard);
                selectedPlayersListView.getItems().add(selectedPlayerString);
            }
        }
    }

    // Removes a player from Users Team
    public void removePlayerFromTeam(ActionEvent actionEvent) {
        String selectedPlayerString = selectedPlayersListView.getSelectionModel().getSelectedItem();
        if (selectedPlayerString != null) {
            Card selectedCard = cardMap.get(selectedPlayerString);
            if (selectedCard != null) {
                selectedPlayers.remove(selectedCard);
                selectedPlayersListView.getItems().remove(selectedPlayerString);
            }
        }
    }

    // Method to save the team data
    public void saveTeam(ActionEvent actionEvent) throws SQLException, ClassNotFoundException {
        System.out.println(selectedPlayers);

        // Convert selected players to UserTeam
        UserTeam userTeam = UserTeamDAO.convertToUserTeam(1, selectedPlayers, 1);
        if (selectedPlayers.size() != 6){
            MainMenuController.showAlert("Must have 6 players on your team!");
        } else if (checkPositions(selectedPlayers) == 0) {
            MainMenuController.showAlert("Must have one player from each position on your team!");
        }else {
            UserTeamDAO.saveTeam(userTeam);
        }
        System.out.println("Save Complete!");
    }

    public static int checkPositions(List<Card> cards) {
        int goalieCount = 0;
        int leftCreaseCount = 0;
        int rightCreaseCount = 0;
        int leftShooterCount = 0;
        int rightShooterCount = 0;
        int pointCount = 0;

        for (Card card : cards) {
            String prefPosition = card.getPrefPosition();
            System.out.println("|" + prefPosition + "|");
            if (prefPosition.toLowerCase().startsWith("goalie")) {
                goalieCount++;
            } else if (prefPosition.toLowerCase().startsWith("left crease")) {
                leftCreaseCount++;
            } else if (prefPosition.toLowerCase().startsWith("right crease")) {
                rightCreaseCount++;
            } else if (prefPosition.toLowerCase().startsWith("left shooter")) {
                leftShooterCount++;
            } else if (prefPosition.toLowerCase().startsWith("right shooter")) {
                rightShooterCount++;
            } else if (prefPosition.toLowerCase().startsWith("point")) {
                pointCount++;
            }
            System.out.println(goalieCount + " " + rightShooterCount + " " + rightCreaseCount + " " + leftShooterCount + " " + leftCreaseCount + " " + pointCount);
        }
        if (goalieCount == 1 && leftCreaseCount == 1 && rightCreaseCount == 1 && leftShooterCount == 1 && rightShooterCount == 1 && pointCount == 1){
            return 1;
        }else {
            return 0;
        }
    }

    public void goBack(ActionEvent actionEvent) {
        Main.showWindow("MainMenu.fxml");
    }
}
