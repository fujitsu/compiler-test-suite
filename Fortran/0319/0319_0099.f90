   REAL, POINTER :: P1, P2
   REAL, TARGET  :: R1, R2
   R1 = 11.1;  R2 = 22.2
   P1 => R1;  P2 => R2
   r2=r1
   print *, r1,r2,p1,p2
   end
