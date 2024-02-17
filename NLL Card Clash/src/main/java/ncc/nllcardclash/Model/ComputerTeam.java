package ncc.nllcardclash.Model;

public class ComputerTeam {
    private int teamId;
    private int goalie;
    private int leftCrease;
    private int rightCrease;
    private int leftShooter;
    private int rightShooter;
    private int point;

    // Constructors
    public ComputerTeam() {
        // Default constructor
    }

    public ComputerTeam(int teamId, int goalie, int leftCrease, int rightCrease,
                        int leftShooter, int rightShooter, int point) {
        this.teamId = teamId;
        this.goalie = goalie;
        this.leftCrease = leftCrease;
        this.rightCrease = rightCrease;
        this.leftShooter = leftShooter;
        this.rightShooter = rightShooter;
        this.point = point;
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

    // Override toString() for debugging or display purposes
    @Override
    public String toString() {
        return "ComputerTeam{" +
                "teamId=" + teamId +
                ", goalie=" + goalie +
                ", leftCrease=" + leftCrease +
                ", rightCrease=" + rightCrease +
                ", leftShooter=" + leftShooter +
                ", rightShooter=" + rightShooter +
                ", point=" + point +
                '}';
    }
}
