package ncc.nllcardclash.Controllers;

import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.scene.control.Alert;
import javafx.scene.control.Button;
import javafx.scene.control.Label;
import javafx.stage.Stage;
import ncc.nllcardclash.Main;
import ncc.nllcardclash.Model.ComputerTeamDAO;

import java.sql.SQLException;

public class MissionController {
    public Button mission1;
    public Button mission2;
    public Button mission3;
    public Button mission4;
    public Button mission5;
    public Button mission6;
    public Button mission7;
    public Button mission8;
    public Button mission9;
    public Button mission10;

    @FXML
    private void initialize() throws SQLException {
        int currentMissionID = ComputerTeamDAO.selectMissionID();

        for (int i = 1; i <= 10; i++) {
            Button missionButton = getMissionButtonByID(i);

            if (missionButton != null) {
                if (i < currentMissionID) {
                    missionButton.setStyle("-fx-background-color: green;");
                    missionButton.setDisable(true);
                } else if (i > currentMissionID) {
                    missionButton.setStyle("-fx-background-color: red;");
                    missionButton.setDisable(true);
                }
            }
        }
    }

    @FXML
    private void selectMission(ActionEvent event) {
        // Get the source of the event (the clicked button)
        Object source = event.getSource();

        if (source instanceof Button) {
            Button clickedButton = (Button) source;

            // Extract the mission number from the button's ID
            String id = clickedButton.getId();
            if (id != null && id.matches("mission\\d+")) {
                int missionNumber = Integer.parseInt(id.substring(7)); // Extract the number after "mission"
                loadMission(missionNumber);
            }
        }
    }

    private Button getMissionButtonByID(int missionNumber) {
        switch (missionNumber) {
            case 1:
                return mission1;
            case 2:
                return mission2;
            case 3:
                return mission3;
            case 4:
                return mission4;
            case 5:
                return mission5;
            case 6:
                return mission6;
            case 7:
                return mission7;
            case 8:
                return mission8;
            case 9:
                return mission9;
            case 10:
                return mission10;
            default:
                return null;
        }
    }
    // Action methods for navigation
    @FXML
    private void navigateBack(ActionEvent event) {
        Main.showWindow("MainMenu.fxml");
    }

    private void loadMission(int mID) {
        Main.showWindow("Match.fxml"); // Loads the Match window
    }
}