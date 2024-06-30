# Inverse gravitational waves from binary black-hole

The idea of the project is to train artificial neural networks with the waveform information from a 
Binary Black Hole system, so that the networks can reproduce the geodesic curves of the system. The 
code of the project is written in Julia, because the key factors to compute the gravitational waveform,
polarization and multipole expansion are already written in Julia. The project is currently divided 
in three parts: 

For the first part of the project I am considering the simplest case where the mass of the first
black-hole is significantly bigger than the mass of the second black-hole. This is a special case, 
because there is an analytical solution, and it is known as extreme mass ratio.

For the second part, the idea is to extend the code to a more general case where the ratio between 
the masses does not vanishes. This is donde by adding two new functions to the pinns (physics 
informed neural networks) which are trivial for the previous case.

The third part consist in extend the code to consider now rotating binary black-hole systems, using
the Kerr metric. The idea is to yet again, consider two scenearios, the first one if the two masses
are considerable different and if the two masses are similar.

Julia code extreme mass ratio
- [X] Newtonian model waveform
- [X] Relativistic model waveform
- [X] Neural Network waveform

Python code extreme mass ratio
- [X] Newtonian model waveform
- [X] Relativistic model waveform
- [X] Neural Network waveform

