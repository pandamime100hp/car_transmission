# car_transmission

Code created to better understand the idea of a FSM (Finite State Machine) through the understanding 
of a car transmission. I wanted to build this in order to work on my own game and to better 
understand some of Godots fundamentals. 

The project is only CLI based, so no actual 2D scenes but going forward I would like to connect code 
together into bigger scenes and projects. As it stands, this code will be reused in future projects.

## Design
The ´car_transmission´ project consists of two main components, a transmission and a clutch. The 
clutch is a child object of the transmission and enables the transmission to change gears. You can 
only change gears if the clutch is engaged. The transmission will only allow you to change to as 
many gears as is set by the `gears` variable as well as neutral and reverse.   

## Acknowledgements
1. Finite State Machine in Godot 4 by Nathan Lovato - https://www.gdquest.com/tutorial/godot/design-patterns/finite-state-machine
2. Finite State Machines in Godot by ForlornU - https://www.youtube.com/watch?v=i0Y6anqiJ-g
3. Code Class - Build your own State Machines! by AdamCYounis - https://www.youtube.com/watch?v=-jkT4oFi1vk
