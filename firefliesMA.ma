[top]
components : habitat

[habitat]
type : cell
dim : (10,10,10)
delay : transport
defaultDelayTime : 1000
border : wrapped
 
neighbors : habitat(-2,0,0)
neighbors : habitat(-1,-1,-1) habitat(-1,-1,1) habitat(-1,-1,0) 
neighbors : habitat(1,-1,-1)  habitat(1,-1,1)  habitat(1,-1,0)
neighbors : habitat(-1,1,-1)  habitat(-1,1,1)  habitat(-1,1,0)
neighbors : habitat(1,1,-1)   habitat(1,1,1)   habitat(1,1,0)
neighbors : habitat(1,0,-1)   habitat(1,0,1)   habitat(1,0,0)
neighbors : habitat(-1,0,-1)  habitat(-1,0,1)  habitat(-1,0,0)
neighbors : habitat(0,1,-1)   habitat(0,1,1)   habitat(0,1,0)
neighbors : habitat(0,-1,-1)  habitat(0,-1,1)  habitat(0,-1,0)
neighbors : habitat(0,0,-1)   habitat(0,0,1)   habitat(0,0,0)

initialvalue : 0
initialMapValue : habitat.map
localtransition : habitat_rule

[habitat_rule]

rule : 9 1000 { (0,0,0) = 0 }

rule : 8 1000 { (0,0,0) = 9 and statecount(0) = 0 }
rule : 9 1000 { (0,0,0) = 9 and statecount(0) > 0 }

rule : 7 1000 { (0,0,0) = 8 and statecount(0) = 0 }
rule : 9 1000 { (0,0,0) = 8 and statecount(0) > 0 }

rule : 6 1000 { (0,0,0) = 7 and statecount(0) = 0 }
rule : 9 1000 { (0,0,0) = 7 and statecount(0) > 0 }

rule : 5 1000 { (0,0,0) = 6 and statecount(0) = 0 }
rule : 9 1000 { (0,0,0) = 6 and statecount(0) > 0 }

rule : 4 1000 { (0,0,0) = 5 and statecount(0) = 0 }
rule : 9 1000 { (0,0,0) = 5 and statecount(0) > 0 }

rule : 3 1000 { (0,0,0) = 4 and statecount(0) = 0 }
rule : 9 1000 { (0,0,0) = 4 and statecount(0) > 0 }

rule : 2 1000 { (0,0,0) = 3 and statecount(0) = 0 }
rule : 9 1000 { (0,0,0) = 3 and statecount(0) > 0 }

rule : 1 1000 { (0,0,0) = 2 and statecount(0) = 0 }
rule : 9 1000 { (0,0,0) = 2 and statecount(0) > 0 }

rule : 0 1000 { (0,0,0) = 1 }