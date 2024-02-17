package ncc.nllcardclash.Model;

import ncc.nllcardclash.DB.DBUtil;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class CardDAO {
    public static List<Card> fetchAvailablePlayers() throws SQLException {
        List<Card> availablePlayers = new ArrayList<>();
        String query = "SELECT * FROM Cards WHERE available = 1";

        try {
            ResultSet resultSet = DBUtil.dbExecuteQuery(query);

            while (resultSet.next()) {
                int cardId = resultSet.getInt("card_id");
                String playerName = resultSet.getString("player_name");
                String prefPosition = resultSet.getString("pref_position");
                int offenseAttribute = resultSet.getInt("offense_attribute");
                int defenceAttribute = resultSet.getInt("defence_attribute");
                int goalieAttribute = resultSet.getInt("goalie_attribute");
                String hand = resultSet.getString("hand");
                int available = resultSet.getInt("available");
                int jerseyNumber = resultSet.getInt("jersey_number");
                int overallRating = resultSet.getInt("overall_rating");

                // Create a Card object with the retrieved data
                Card card = new Card(cardId, playerName, prefPosition, offenseAttribute,
                        defenceAttribute, goalieAttribute, hand, available,
                        jerseyNumber, overallRating);
                availablePlayers.add(card);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
        return availablePlayers;
    }

    public static List<Card> resultToCardList(ResultSet rs){
        List<Card> cardList = new ArrayList<>();

        try {
            while (rs.next()) {
                int goalieId = rs.getInt("goalie");
                int leftCreaseId = rs.getInt("left_crease");
                int rightCreaseId = rs.getInt("right_crease");
                int leftShooterId = rs.getInt("left_shooter");
                int rightShooterId = rs.getInt("right_shooter");
                int pointId = rs.getInt("point");

                // Fetch Card objects based on retrieved IDs
                cardList.add(fetchCardById(goalieId));
                cardList.add(fetchCardById(leftCreaseId));
                cardList.add(fetchCardById(rightCreaseId));
                cardList.add(fetchCardById(leftShooterId));
                cardList.add(fetchCardById(rightShooterId));
                cardList.add(fetchCardById(pointId));
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return cardList;
    }

    // Gets Card info from DB
    public static Card fetchCardById(int cardId) throws SQLException {
        ResultSet resultSet = null;
        Card card = null;

        try {

            // Prepare SQL statement to fetch Card data based on cardId
            String query = "SELECT * FROM Cards WHERE card_id = " + cardId;

            resultSet = DBUtil.dbExecuteQuery(query);

            // Process the result set and create a Card object
            while(resultSet.next()) {
                card = new Card();
                card.setCardId(resultSet.getInt("card_id"));
                card.setPlayerName(resultSet.getString("player_name"));
                card.setPrefPosition(resultSet.getString("pref_position"));
                card.setOffenseAttribute(resultSet.getInt("offense_attribute"));
                card.setDefenceAttribute(resultSet.getInt("defence_attribute"));
                card.setGoalieAttribute(resultSet.getInt("goalie_attribute"));
                card.setHand(resultSet.getString("hand"));
                card.setAvailable(resultSet.getInt("available"));
                card.setJerseyNumber(resultSet.getInt("jersey_number"));
                card.setOverallRating(resultSet.getInt("overall_rating"));
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

        return card;
    }

    // Updates Card availability
    public static void updateCardAvailForMission() throws SQLException {
        System.out.println("CP 2");
        try {
            // SQL statement to update the 'available' column in 'Cards' table for a specific mission
            String updateStmt = "UPDATE Cards SET available = 1 WHERE card_id = (" +
                    "SELECT card_id FROM Rewards " +
                    "WHERE reward_id = (" +
                    "SELECT reward_id FROM Missions " +
                    "WHERE mission_id = (SELECT current_mission_id FROM User_Profile WHERE user_id = 1)))";
            // SQL statement to update the 'current_mission_id' in 'User_Profile' table
            String updateCurrentMissionIdStmt = "UPDATE User_Profile " +
                    "SET current_mission_id = current_mission_id + 1";

            DBUtil.dbExecuteUpdate(updateStmt);
            System.out.println("CP 3");
            DBUtil.dbExecuteUpdate(updateCurrentMissionIdStmt);
            System.out.println("CP 4");


        } catch (SQLException e) {
            e.printStackTrace();
            throw e;
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
    }
}
