#!/bin/bash

cd $1;

mkdir controller
mkdir model
mkdir view

cd controller
touch Controller.java

cat > Controller.java  << EndOfMessage
package controller;

import model.Model;
import view.ViewFrame;
import view.ViewPanel;

public class Controller {

    private ViewPanel viewPanel;
    private ViewFrame viewFrame;
    private Model model;

    public Controller(){
        this.viewPanel = new ViewPanel(this);
        this.viewFrame = new ViewFrame(viewPanel);
        this.model = new Model();
    }

    public static void main(String[] args) {
        new Controller();
    }
}
EndOfMessage

cd ../view
touch ViewFrame.java
touch ViewPanel.java

cat > ViewPanel.java << EndOfMassage
package view;

import controller.Controller;

import javax.swing.*;

public class ViewPanel extends JPanel {

    public ViewPanel(Controller controller){

    }

}
EndOfMassage

cat > ViewFrame.java << EndOfMassage
package view;

import javax.swing.*;
import java.awt.*;

public class ViewFrame extends JFrame {

    public ViewFrame(JPanel panel){
        super("Physics Test");
        this.setSize(new Dimension(500,1000));
        this.add(panel);
//        this.pack(); <--- TODO - packs the frame in as small as possible while still fitting everything inside it, remove it at the end maybe.
        this.setDefaultCloseOperation(EXIT_ON_CLOSE);
        this.setLocationRelativeTo(null);
        this.setResizable(false);
        this.setVisible(true);
    }
}
EndOfMassage

cd ../model
touch Model.java
cat > Model.java << EndOfMessage
package model;

public class Model {
}
EndOfMessage
















