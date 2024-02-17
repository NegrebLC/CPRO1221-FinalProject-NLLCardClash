package ncc.nllcardclash.Controllers;

import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.stage.Stage;
import ncc.nllcardclash.Main;

public class StartMenuController {

    private Stage primaryStage; // Primary stage reference

    public void setPrimaryStage(Stage primaryStage) {
        this.primaryStage = primaryStage; // Sets the primary stage reference
    }

    @FXML
    void startGame(ActionEvent event) {
        Main.showWindow("MainMenu.fxml"); // Shows the main menu window
    }

    @FXML
    void exitGame(ActionEvent event) {
        System.exit(0); // Closes the primary stage
    }
}
