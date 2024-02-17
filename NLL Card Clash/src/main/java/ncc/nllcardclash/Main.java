package ncc.nllcardclash;

import javafx.application.Application;
import javafx.fxml.FXMLLoader;
import javafx.scene.Scene;
import javafx.scene.layout.AnchorPane;
import javafx.scene.layout.BorderPane;
import javafx.stage.Stage;

import java.io.IOException;

// Main class extending Application for JavaFX
public class Main extends Application {

    // Primary stage for the application
    private Stage primaryStage;

    // Root layout for the application UI
    private static BorderPane rootLayout;

    // Method to get a new instance of FXMLLoader
    public static FXMLLoader getLoader() {
        return new FXMLLoader();
    }

    // Override method to start the JavaFX application
    @Override
    public void start(Stage primaryStage) {
        this.primaryStage = primaryStage;
        this.primaryStage.setTitle("NLL Card Clash"); // Set application title

        initRootLayout(); // Initialize the root layout

        showWindow("StartMenu.fxml"); // Show the Start Menu
    }

    // Method to initialize the root layout of the application
    public void initRootLayout() {
        try {
            FXMLLoader loader = new FXMLLoader();
            loader.setLocation(Main.class.getResource("RootLayout.fxml")); // Load RootLayout.fxml
            rootLayout = (BorderPane) loader.load(); // Load the root layout

            Scene scene = new Scene(rootLayout); // Create a scene with the root layout
            primaryStage.setScene(scene); // Set the scene to the primary stage

            primaryStage.show(); // Display the primary stage
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    // Method to show a window based on the provided filename
    public static void showWindow(String filename) {
        try {
            FXMLLoader loader = new FXMLLoader();
            loader.setLocation(Main.class.getResource(filename)); // Load the FXML file
            AnchorPane view = (AnchorPane) loader.load(); // Load the view from FXML

            rootLayout.setCenter(view); // Set the loaded view to the center of the root layout
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
