(deftemplate cola (slot cost))
(deftemplate orange (slot cost))
(deftemplate sweets (slot cost))
(deftemplate chocolate (slot cost))
(deftemplate Item (slot item))
(deftemplate Money (slot money))

(deffunction input-money (?input)
      (if (eq ?input R5)
		then
                (return 5.00))
      (if (eq ?input R2) 
		then
                (return 2.00))
      (if (eq ?input R1)
		then
                (return 1.00))
      (if (eq ?input c50)
		then
                (return 0.50))
      (if (eq ?input c20) 
		then
                (return 0.20))
     (if (eq ?input c10)
		then
                (return 0.10)))						
	  
(deffunction selected-item (?name)
      (if (eq ?name cola)
	    then
		(bind ?itemcost 8.50))
	  (if (eq ?name orange)
	    then
		(bind ?itemcost 10.00))
	  (if (eq ?name sweets)
	    then
		(bind ?itemcost 12.50))
	  (if (eq ?name chocolate)
	    then
		(bind ?itemcost 15.00))
(while (> ?itemcost 0)
   (printout t "add money ")
   (bind ?itemcost(- ?itemcost(input-money (read))))
   (if (>= ?itemcost 0)
      then
   (printout t "current cost is " ?itemcost " add more money ")))
   (printout t "enougth money has been payd your amount of change is R" (* ?itemcost -1)))
   
(defrule select-item 
   =>
      (printout t "after selecting an item enter money in terms of R5, R2, R1, c50, c20, c10 the costs for the items are
                             cola R8.50
				orange R10.00
				sweets R12.50
				chocolate R15.00 
				")
     (selected-item(read)))