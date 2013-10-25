clc
clear all;
import javax.swing.*;
I=imread('bg.jpg');
[x,y,z]=size(I);
jimg = im2java(I);

icon = javax.swing.ImageIcon(jimg);
label = javax.swing.JLabel(icon);
frame.getContentPane.add(label);
frame.pack;
screenSize = get(0,'ScreenSize');  %# Get the screen size from the root object
frame.setSize(y,x);

container =frame.getContentPane();
container.setLayout();
button = javax.swing.JButton;
button.setSize(100,24);
container.add(button);

frame.setSize(screenSize(3),screenSize(4));
frame.setLocation(floor(screenSize(3)/2)-floor(y/2),floor(screenSize(4)/2)-floor(x/2));
frame.show;

  panel = javax.swing.JPanel;
  frame.add(panel);
  
  panel.add(button);
  button.setVisible(true);