package ncc.nllcardclash.Controllers;

import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.scene.control.Alert;
import javafx.stage.Stage;
import ncc.nllcardclash.Main;

public class MainMenuController {
    private Stage primaryStage;

    @FXML
    private void navigateToTeamBuilder(ActionEvent event) {
        // Navigates to the TeamBuilder window
        Main.showWindow("TeamBuilder.fxml");
    }

    @FXML
    private void navigateToMissionSelect(ActionEvent event) {
        // Navigates to the MissionSelect window
        Main.showWindow("MissionSelect.fxml");
    }

    @FXML
    private void quitGame(ActionEvent event) {
        // Quits the game
        System.exit(0);
    }

    public static void showAlert(String message) {
        // Displays an information alert with the given message
        Alert alert = new Alert(Alert.AlertType.INFORMATION);
        alert.setTitle("Information");
        alert.setHeaderText(null);
        alert.setContentText(message);
        alert.showAndWait();
    }
}
