package ncc.nllcardclash.Model;

public class Card {
    private int cardId; // Unique identifier
    private String playerName; // Name of the player
    private String prefPosition; // Preferred position
    private int offenseAttribute; // Offensive attribute value
    private int defenceAttribute; // Defensive attribute value
    private int goalieAttribute; // Goalie attribute value
    private String hand; // Preferred hand
    private int available; // Availability status
    private int jerseyNumber; // Player's jersey number
    private int overallRating; // Overall rating

    // Constructors
    public Card() {
        // Default constructor
    }

    public Card(int cardId, String playerName, String prefPosition, int offenseAttribute,
                int defenceAttribute, int goalieAttribute, String hand, int available,
                int jerseyNumber, int overallRating) {
        this.cardId = cardId;
        this.playerName = playerName;
        this.prefPosition = prefPosition;
        this.offenseAttribute = offenseAttribute;
        this.defenceAttribute = defenceAttribute;
        this.goalieAttribute = goalieAttribute;
        this.hand = hand;
        this.available = available;
        this.jerseyNumber = jerseyNumber;
        this.overallRating = overallRating;
    }

    public Card(String playerName, String prefPosition, int offenseAttribute, int defenceAttribute, int goalieAttribute, String hand, int available, int jerseyNumber, int overallRating) {

    }

    // Getters and setters for all fields
    public int getCardId() {
        return cardId;
    }

    public void setCardId(int cardId) {
        this.cardId = cardId;
    }

    public String getPlayerName() {
        return playerName;
    }

    public void setPlayerName(String playerName) {
        this.playerName = playerName;
    }

    public String getPrefPosition() {
        return prefPosition;
    }

    public void setPrefPosition(String prefPosition) {
        this.prefPosition = prefPosition;
    }

    public int getOffenseAttribute() {
        return offenseAttribute;
    }

    public void setOffenseAttribute(int offenseAttribute) {
        this.offenseAttribute = offenseAttribute;
    }

    public int getDefenceAttribute() {
        return defenceAttribute;
    }

    public void setDefenceAttribute(int defenceAttribute) {
        this.defenceAttribute = defenceAttribute;
    }

    public int getGoalieAttribute() {
        return goalieAttribute;
    }

    public void setGoalieAttribute(int goalieAttribute) {
        this.goalieAttribute = goalieAttribute;
    }

    public String getHand() {
        return hand;
    }

    public void setHand(String hand) {
        this.hand = hand;
    }

    public int getAvailable() {
        return available;
    }

    public void setAvailable(int available) {
        this.available = available;
    }

    public int getJerseyNumber() {
        return jerseyNumber;
    }

    public void setJerseyNumber(int jerseyNumber) {
        this.jerseyNumber = jerseyNumber;
    }

    public int getOverallRating() {
        return overallRating;
    }

    public void setOverallRating(int overallRating) {
        this.overallRating = overallRating;
    }

    // Override toString()
    @Override
    public String toString() {
        return "Card{" +
                "cardId=" + cardId +
                ", playerName='" + playerName + '\'' +
                ", prefPosition='" + prefPosition + '\'' +
                ", offenseAttribute=" + offenseAttribute +
                ", defenceAttribute=" + defenceAttribute +
                ", goalieAttribute=" + goalieAttribute +
                ", hand='" + hand + '\'' +
                ", available=" + available +
                ", jerseyNumber=" + jerseyNumber +
                ", overallRating=" + overallRating +
                '}';
    }
}