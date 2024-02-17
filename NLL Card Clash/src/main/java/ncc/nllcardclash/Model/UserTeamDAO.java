package ncc.nllcardclash.Model;

import ncc.nllcardclash.DB.DBUtil;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class UserTeamDAO {
    // Updates a User Team in the DB
    public static void saveTeam(UserTeam userTeam) throws SQLException, ClassNotFoundException {
        System.out.println(userTeam);
        int g = userTeam.getGoalie();
        int lc = userTeam.getLeftCrease();
        int rc = userTeam.getRightCrease();
        int ls = userTeam.getLeftShooter();
        int rs = userTeam.getRightShooter();
        int p = userTeam.getPoint();

        // Prepare an UPDATE statement using PreparedStatement with placeholders
        String updateStmt =
                "UPDATE User_Teams " +
                        "SET goalie = " + g + ", " +
                        "    left_crease = " + lc + ", " +
                        "    right_crease = " + rc + ", " +
                        "    left_shooter = " + ls + ", " +
                        "    right_shooter = " + rs + ", " +
                        "    point = " + p + " " +
                        "WHERE team_id = 1";

        // Execute the UPDATE operation using a PreparedStatement
        try {
            DBUtil.dbExecuteUpdate(updateStmt);
        } catch (Exception e) {
            System.out.print("Error occurred while UPDATE Operation: " + e);
            throw e;
        }
    }

    //Converts data to a UserTeam obj
    public static UserTeam convertToUserTeam(int teamId, List<Card> selectedPlayers, int userId) {

        UserTeam userTeam = new UserTeam();
        userTeam.setTeamId(teamId);
        userTeam.setUserId(userId);

        // Iterate through the selected players and set the corresponding fields in UserTeam
        for (Card player : selectedPlayers) {
            int cid = player.getCardId();
            boolean goalie = cid <= 10;
            boolean ls = cid <= 20;
            boolean rs = cid <= 30;
            boolean lc = cid <= 50;
            boolean rc = cid <= 40;
            boolean pt = cid <= 60;
            if (goalie) {
                userTeam.setGoalie(player.getCardId());
            } else if (ls) {
                userTeam.setLeftShooter(player.getCardId());
            } else if (rs) {
                userTeam.setRightShooter(player.getCardId());
            } else if (rc) {
                userTeam.setRightCrease(player.getCardId());
            } else if (lc) {
                userTeam.setLeftCrease(player.getCardId());
            } else {
                userTeam.setPoint(player.getCardId());
            }
        }

        return userTeam;
    }

    public static List<Card> selectUserTeamByTeamId() throws SQLException {
        ResultSet resultSet = null;
        List<Card> cardList = new ArrayList<>();

        try {

            // SQL statement
            String query = "SELECT * FROM User_Teams WHERE team_id = 1";

            // Execute the query and get the result set
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
}
