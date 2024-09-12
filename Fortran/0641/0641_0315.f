      DIMENSION A(10), B(10), C(10), L(10)
      LOGICAL*4 LB(10)
      DATA A/10*0/ 
      DATA L/1,2,3,4,5,6,7,8,9,10/ 
      DATA B/1,2,3,4,5,6,7,8,9,10/ 
      DATA C/-2,-2,0,-5,-5,-5,-7,0,-10,-11/ 
      DATA LB/5*.TRUE.,5*.FALSE./ 

      DO I=1,6,5
       IF (B(L(I)) + C(L(I))) 18, 19, 21
   18  A(I) = I
       GO TO 22
   19  A(I) = -I
       GO TO 22
   21  A(I) = I * I
   22  IF (B(L(I+1)) + C(L(I+1))) 1, 2, 3
    1  A(I+1) = I + 1
       GO TO 4
    2  A(I+1) = -1 - I
       GO TO 4
    3  A(I+1) = (I + 1) * (I + 1)
    4  IF (B(L(I+2)) + C(L(I+2))) 5, 6, 7
    5  A(I+2) = I + 2
       GO TO 8
    6  A(I+2) = -2 - I
       GO TO 8
    7  A(I+2) = (I + 2) * (I + 2)
    8  IF (B(L(I+3)) + C(L(I+3))) 9, 11, 12
    9  A(I+3) = I + 3
       GO TO 13
   11  A(I+3) = -3 - I
       GO TO 13
   12  A(I+3) = (I + 3) * (I + 3)
   13  IF (B(L(I+4)) + C(L(I+4))) 14, 15, 16
   14  A(I+4) = I + 4
       GO TO 17
   15  A(I+4) = -4 - I
       GO TO 17
   16  A(I+4) = (I + 4) * (I + 4)
   17  CONTINUE
      END DO

      WRITE (6, 100) A
  100 FORMAT(1H ,10F5.1)
      STOP 
      END
