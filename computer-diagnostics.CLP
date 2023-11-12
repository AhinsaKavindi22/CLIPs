

;Computer Diagnostics Expert using CLIPs


(defrule p1
 ?ifYesNoChoice1 <- (start)
 =>
 (printout t crlf crlf "Does the computer turn on?(yes/no) " crlf "Your answer: " )
 (assert (computer turns (read)))
 (retract ?ifYesNoChoice1))

;....................R8..........................

(defrule rule8
 (computer turns no)
 =>
 (printout t crlf "There is a problem with the power source and connections !!!" crlf crlf))


(defrule p3
 (computer turns yes)
 =>
 (printout t crlf crlf "Is the computer slow?(yes/no) " crlf "Your answer: " )
 (assert (computer slow (read))))


(defrule p4
 (computer turns yes)
 (computer slow yes)
 =>
 (printout t crlf crlf "Does the computer display a blue screen?(yes/no) " crlf "Your answer: ")
 (assert (display blue screen (read))))

;....................R1..........................

(defrule rule1
 (computer turns yes)
 (computer slow yes)
 (display blue screen yes)
 =>
 (printout t crlf crlf "There is a problem with recent software or hardware changes !!!" crlf crlf crlf))

;....................R2..........................

(defrule rule2
 (computer turns yes)
 (computer slow yes)
 (display blue screen no)
 =>
 (printout t crlf crlf "There is a problem with software bloat or malware !!!" crlf crlf crlf))


(defrule p7
 (computer turns yes)
 (computer slow no)
 =>
 (printout t crlf crlf "Does the computer have sound?(yes/no) " crlf "Your answer: ")
 (assert (computer sounds (read))))


(defrule p8
 (computer turns yes)
 (computer slow no)
 (computer sounds no)
 =>
 (printout t crlf crlf "Can the computer connect to the internet?(yes/no) " crlf "Your answer: ")
 (assert (computer connects (read))))

;....................R3..........................

(defrule rule3
 (computer turns yes)
 (computer slow no)
 (computer sounds no)
 (computer connects yes)
 =>
 (printout t crlf crlf "There is a problem with sound drivers !!!" crlf crlf crlf))

;....................R4..........................

(defrule rule4
 (computer turns yes)
 (computer slow no)
 (computer sounds no)
 (computer connects no)
 =>
 (printout t crlf crlf "There is a problem with network drivers, cables, or router !!!" crlf crlf crlf))


(defrule p11
 (computer turns yes)
 (computer slow no)
 (computer sounds yes)
 =>
 (printout t crlf crlf "Is the computer overheating?(yes/no) " crlf "Your answer: ")
 (assert (computer overheats (read))))

;....................R5..........................

(defrule rule5
 (computer turns yes)
 (computer slow no)
 (computer sounds yes)
 (computer overheats yes)
 =>
 (printout t crlf crlf "There are thermal issues and ventilation issues in your computer, Check fans !!!" crlf crlf crlf))


(defrule p13
 (computer turns yes)
 (computer slow no)
 (computer sounds yes)
 (computer overheats no)
 =>
 (printout t crlf crlf "Does the computer frequently restart?(yes/no) " crlf "Your answer: ")
 (assert (computer frequently restarts (read))))

;....................R6..........................

(defrule rule6
 (computer turns yes)
 (computer slow no)
 (computer sounds yes)
 (computer overheats no)
 (computer frequently restarts yes)
 =>
 (printout t crlf crlf "There is a problem with faulty RAM, or recent driver updates !!!" crlf crlf crlf))

;....................R7..........................

(defrule rule7
 (computer turns yes)
 (computer slow no)
 (computer sounds yes)
 (computer overheats no)
 (computer frequently restarts no)
 =>
 (printout t crlf crlf "Don't worry, There is no specific issue detected with your computer !!!" crlf crlf crlf))

(deffacts startup(start))






