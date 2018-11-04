# Neural Network - Ruby

This is a Ruby program to implement MaxNet.

MaxNet is a fixed weight network, which serves as a subnet for selecting the node having the highest input. 
All the nodes are fully interconnected and there exists symmetrical weights in all these weighted interconnections.
It uses the mechanism which is an iterative process and each node receives inhibitory inputs from all other nodes through connections. 
The single node whose value is maximum would be active or winner and the activations of all other nodes would be inactive. 
Max Net uses identity activation function with 
                                      f(x)= x  if x > 0
                                      f(x)= 0  if x <= 0
The task of this net is accomplished by the self-excitation weight of +1 and mutual inhibition magnitude, which is set like [0 < ɛ < 1m] where “m” is the total number of the nodes.
