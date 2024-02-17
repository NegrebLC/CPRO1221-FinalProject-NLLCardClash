package ncc.nllcardclash.Model;
public class UserTeam {
    private int teamId;
    private int goalie;
    private int leftCrease;
    private int rightCrease;
    private int leftShooter;
    private int rightShooter;
    private int point;
    private int userId;
    // Constructors
    public UserTeam() {
        // Default constructor
    }

    public UserTeam(int teamId, int goalie, int leftCrease, int rightCrease,
                    int leftShooter, int rightShooter, int point, int userId) {
        this.teamId = teamId;
        this.goalie = goalie;
        this.leftCrease = leftCrease;
        this.rightCrease = rightCrease;
        this.leftShooter = leftShooter;
        this.rightShooter = rightShooter;
        this.point = point;
        this.userId = userId;
    }

    // Getters and setters for all fields
    public int getTeamId() {
        return teamId;
    }

    public void setTeamId(int teamId) {
        this.teamId = teamId;
    }

    public int getGoalie() {
        return goalie;
    }

    public void setGoalie(int goalie) {
        this.goalie = goalie;
    }

    public int getLeftCrease() {
        return leftCrease;
    }

    public void setLeftCrease(int leftCrease) {
        this.leftCrease = leftCrease;
    }

    public int getRightCrease() {
        return rightCrease;
    }

    public void setRightCrease(int rightCrease) {
        this.rightCrease = rightCrease;
    }

    public int getLeftShooter() {
        return leftShooter;
    }

    public void setLeftShooter(int leftShooter) {
        this.leftShooter = leftShooter;
    }

    public int getRightShooter() {
        return rightShooter;
    }

    public void setRightShooter(int rightShooter) {
        this.rightShooter = rightShooter;
    }

    public int getPoint() {
        return point;
    }

    public void setPoint(int point) {
        this.point = point;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    // Override toString() for debugging or display purposes
    @Override
    public String toString() {
        return "UserTeam{" +
                "teamId=" + teamId +
                ", goalie=" + goalie +
                ", leftCrease=" + leftCrease +
                ", rightCrease=" + rightCrease +
                ", leftShooter=" + leftShooter +
                ", rightShooter=" + rightShooter +
                ", point=" + point +
                ", userId=" + userId +
                '}';
    }
}
