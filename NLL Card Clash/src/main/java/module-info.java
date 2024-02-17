module ncc.nllcardclash {
    requires javafx.controls;
    requires javafx.fxml;

    requires org.controlsfx.controls;
    requires com.dlsc.formsfx;
    requires org.kordamp.bootstrapfx.core;
    requires java.sql;
    requires ojdbc8;
    requires java.sql.rowset;

    opens ncc.nllcardclash to javafx.fxml;
    exports ncc.nllcardclash;
    exports ncc.nllcardclash.Controllers;
    opens ncc.nllcardclash.Controllers to javafx.fxml;
}
