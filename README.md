# Interface
 Interface RED v2 
 
  Carolina Pinheiro
  
  RED - 2020/21
  
  carolina.p.pinheiro@tecnico.ulisboa.pt
 
 **Open interface_app.mlapp app in matlab (located in the code folder) to edit the code.**
 
 Example of interface working:
 ![imagem](https://user-images.githubusercontent.com/57190987/118312715-0c841480-b4f2-11eb-8d77-12ea1493158b.png)

 
 Instructions 
 
**----------------------------------------1) General Use---------------------------------------------**


-The angles must be calibrated beforehand 

-The data that is being received must be in the following format:

    aceX aceY aceZ lati longi altiMed vel pitch roll yaw time
    
    The data should be separated by spaces
    
-Select the com door 

-Insert the baudrate

-Flip the on/off switch (the light will turn green to indicate it is on).

-The images of the map, velocity plot and trajectory plot can be saved by pushing the button 'Save Images'. When the Images are being saved the 'Ready' lamp will turn blue and then turn back to green when finished.The program is paused while it is saving the images. 

-To re-use the interface, the On/Off switch must be turned Off and then by clicking in the "Reset" button all the data will be reseted, whitout a need for a reboot.
-The interface needs an internet connection to display the map.

-Use the "Re-Center Map" button to make the most recent coordinates received the center of the map.

**---------------------------------------2) Using a TextFile------------------------------------------**


The interface can also be used to read from a current textfile. Change the input in the menu and flip the On/Off switch. A window will pop up to insert the file name and the delay between each data point in seconds.


THE FILE MUST BE IN THE CURRENT DIRECTORY IN ORDER FOR THE PROGRAM TO READ IT, IF IT ISN'T AN ERROR WILL OCCUR AND YOU WILL HEAR THE MATLAB ERROR SOUND


If you want to make sure what the current directory is, click on the Save Images button and see where the images are saved.
The rest of the use of the interface is the same


**---------------------------------------3) Install and redistribute------------------------------------------**

Go to code/InterfaceREDv2.0/, if it is the first time using the Interface use the installer present in the for_redistribution/ folder.

If it is not, you can get the most up to date version by just running the Interface from the contents of the for_redistribution_files_only folder

Depending on the computer, the interface can take a bit to open.

 

 
 
