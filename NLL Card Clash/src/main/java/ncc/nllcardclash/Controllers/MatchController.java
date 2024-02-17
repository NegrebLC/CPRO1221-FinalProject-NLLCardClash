package ncc.nllcardclash.Controllers;

import javafx.fxml.FXML;
import javafx.scene.control.Button;
import javafx.scene.control.Label;
import javafx.scene.control.ListView;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.event.ActionEvent;
import ncc.nllcardclash.Main;
import ncc.nllcardclash.Model.Card;
import ncc.nllcardclash.Model.CardDAO;
import ncc.nllcardclash.Model.ComputerTeamDAO;
import ncc.nllcardclash.Model.UserTeamDAO;

import java.sql.SQLException;
import java.util.List;

public class MatchController {
    @FXML
    private Label missionIDLabel; // Label displaying the mission ID

    private int mID; // Mission ID

    @FXML
    private ListView<String> userTeamListView; // List view displaying user's team

    @FXML
    private ListView<String> opponentTeamListView; // List view displaying opponent's team

    @FXML
    private Label matchResultLabel; // Label displaying the match result

    @FXML
    private Button nextButton; // Button to proceed to the next action

    private ObservableList<String> userTeamData = FXCollections.observableArrayList(); // Placeholder for user's team data
    private ObservableList<String> opponentTeamData = FXCollections.observableArrayList(); // Placeholder for opponent's team data

    public void setMissionID(int missionID) {
        missionIDLabel.setText(String.valueOf(missionID)); // Sets the mission ID label
        this.mID = missionID; // Sets the mission ID
    }

    @FXML
    private void initialize() {
        try {
            System.out.println(this.mID);
            // Fetch UserTeam and populate the userTeamData list
            List<Card> userTeam = UserTeamDAO.selectUserTeamByTeamId(); // Fetches user's team data
            int userTeamOverallSum = 0;
            for (Card card : userTeam) {
                userTeamData.addAll(
                        "Name: " + card.getPlayerName(),
                        "Overall Rating: " + card.getOverallRating(),
                        "#" + card.getJerseyNumber()
                );
                userTeamOverallSum += card.getOverallRating();
            }
            userTeamListView.setItems(userTeamData);

            // Fetch Opponent's ComputerTeam and populate the opponentTeamData list
            List<Card> opponentTeam = ComputerTeamDAO.selectComputerTeamByMissionId(); // Fetches opponent's team data
            int opponentTeamOverallSum = 0;
            for (Card card : opponentTeam) {
                opponentTeamData.addAll(
                        "Name: " + card.getPlayerName(),
                        "Overall Rating: " + card.getOverallRating(),
                        "#" + card.getJerseyNumber()
                );
                opponentTeamOverallSum += card.getOverallRating();
            }
            opponentTeamListView.setItems(opponentTeamData);

            // Calculate average overall rating for each team
            double userTeamAverage = (double) userTeamOverallSum / userTeam.size();
            double opponentTeamAverage = (double) opponentTeamOverallSum / opponentTeam.size();

            // Set the match result label based on the comparison
            if (userTeamAverage >= opponentTeamAverage) {
                this.matchResultLabel.setText("Victory!"); // Sets the match result label to Victory
            } else {
                this.matchResultLabel.setText("Defeat!"); // Sets the match result label to Defeat
            }
        } catch (SQLException e) {
            e.printStackTrace();
            // Handle database exception here
        }
    }

    @FXML
    private void proceedToNextAction(ActionEvent event) throws SQLException {
        // Set the match result label based on the comparison
        if (matchResultLabel.getText().equals("Victory!")) {

            System.out.println("CP 1");
            CardDAO.updateCardAvailForMission(); // Updates card availability for the mission
            System.out.println("Updated Current Mission!!!");
            Main.showWindow("MainMenu.fxml"); // Proceeds to the main menu on button click
            System.out.println("Updated Current Mission!!!");

        } else {
            Main.showWindow("MainMenu.fxml"); // Proceeds to the main menu on button click
        }
    }
}