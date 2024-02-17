package ncc.nllcardclash.Model;

import ncc.nllcardclash.DB.DBUtil;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

public class ComputerTeamDAO {
    // Gets a Computer Team From the Mission ID
    public static List<Card> selectComputerTeamByMissionId() throws SQLException {
        ResultSet resultSet = null;
        List<Card> cardList;

        try {
            // Prepare SQL statement to select data from Computer_Teams based on Missions team_id
            String query = "SELECT * FROM Computer_Teams WHERE team_id = " +
                    "(SELECT team_id FROM Missions WHERE mission_id = " +
                    "(SELECT current_mission_id FROM User_Profile WHERE user_id = 1))";

            resultSet = DBUtil.dbExecuteQuery(query);
            cardList = CardDAO.resultToCardList(resultSet);



        } catch (SQLException e) {
            e.printStackTrace();
            throw e;
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        } finally {
            if (resultSet != null) {
                resultSet.close();
            }
        }

        return cardList;
    }

    public static int selectMissionID() throws SQLException {
        ResultSet resultSet = null;
        int mid = -1; // Default value if not found or error occurs

        try {
            // Prepare SQL statement to select data from User_Profile based on user_id
            String query = "SELECT current_mission_id FROM User_Profile WHERE user_id = 1";

            resultSet = DBUtil.dbExecuteQuery(query);

            if (resultSet.next()) {
                mid = resultSet.getInt("current_mission_id");
            }

        } catch (SQLException e) {
            e.printStackTrace();
            throw e;
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        } finally {
            if (resultSet != null) {
                resultSet.close();
            }
        }
        return mid;
    }
}
