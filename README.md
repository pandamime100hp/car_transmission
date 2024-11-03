# car_transmission

Code created to better understand the idea of a FSM (Finite State Machine) through the understanding 
of a car transmission. I wanted to build this in order to work on my own game and to better 
understand some of Godots fundamentals. 

The project now has a UI which displays the interaction between the clutch and gear the car is 
currently in with some instructions of usage, as shown below:

![image](https://github.com/user-attachments/assets/519eb85e-9020-4140-8505-4b4b1b5724ab)

## Design
The ´car_transmission´ project consists of two main components, a transmission and a clutch. The 
clutch is a child object of the transmission and enables the transmission to change gears. You can 
only change gears if the clutch is engaged. The transmission will only allow you to change to as 
many gears as is set by the `gears` variable as well as neutral and reverse.   

## Acknowledgements
1. Finite State Machine in Godot 4 by Nathan Lovato - https://www.gdquest.com/tutorial/godot/design-patterns/finite-state-machine
2. Finite State Machines in Godot by ForlornU - https://www.youtube.com/watch?v=i0Y6anqiJ-g
3. Code Class - Build your own State Machines! by AdamCYounis - https://www.youtube.com/watch?v=-jkT4oFi1vk
