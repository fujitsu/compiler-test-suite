      PROGRAM MAIN

       REAL*8 DV1(3), DV2(3,3)
       DATA DV1/3*0./ 
       INTEGER IS1

       DV2(1,1) = 0D0
       DV2(2,1) = 0D0
       DV2(3,1) = 0D0
       DV2(1,2) = 0D0
       DV2(2,2) = 0D0
       DV2(3,2) = 0D0
       DV2(1,3) = 0D0
       DV2(2,3) = 0D0
       DV2(3,3) = 0D0

       IND = 1
  100  READ (5, *, END=999) DV1(IND)

       IS1 = 1
    1  DV2(1,IND) = DV1(1)
       IF (DV1(1) * IS1) 10, 11, 2
    2  IS1 = 0
       GO TO 1
   11  DV2(1,IND) = -DV2(1,IND)
   10  CONTINUE
       DV2(2,IND) = DV1(2)
       IF (DV1(2) * IS1) 5, 4, 3
    3  IS1 = 0
       GO TO 1
    4  DV2(2,IND) = -DV2(2,IND)
    5  CONTINUE
       DV2(3,IND) = DV1(3)
       IF (DV1(3) * IS1) 8, 7, 6
    6  IS1 = 0
       GO TO 1
    7  DV2(3,IND) = -DV2(3,IND)
    8  CONTINUE
       IF (DV1(IND) .EQ. -100.) GO TO 1

       WRITE (6, *) DV1, DV2

       IND = IND + 1
       GO TO 100
  999  STOP 
      END
