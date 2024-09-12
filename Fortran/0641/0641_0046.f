      REAL*8 DA11(10,10), DS1
      DATA DA11/100*0/ 
      INTEGER*2 HA11(2:9)
      REAL*4 EA11(10), EA12(-1:12), EA13(0:11)
      DATA EA13/12*10/ 
      DATA EA12/14*9/ 
      DATA EA11/10*0/ 
      REAL*8 DA21(10,10)
      DATA DA21/100*0/ 
      INTEGER*2 HA21(2:9)
      REAL*4 EA21(10), EA22(-1:12), EA23(0:11)
      DATA EA23/12*10/ 
      DATA EA22/14*9/ 
      DATA EA21/10*0/ 
      INTEGER N
      PARAMETER (N = 9)
      INTEGER I1
      DOUBLE PRECISION DD14, DD13, DD12, DD11, DD10, DD9, DD8, DD7, DD6
     X  , DD5, DD4, DD3, DD2, DD1
      DD1 = EA13(1)
      DD2 = EA13(2)
      DD3 = EA13(3)
      DD4 = EA13(4)
      DD5 = EA13(5)
      DD6 = EA13(6)
      DD7 = EA13(7)
      DS1 = EA13(8)
      EA12(7) = EA13(8) * 2
      EA12(6) = EA13(7) * 2
      EA12(5) = EA13(6) * 2
      EA12(4) = EA13(5) * 2
      EA12(3) = EA13(4) * 2
      EA12(2) = EA13(3) * 2
      EA12(1) = EA13(2) * 2
      EA12(0) = EA13(1) * 2
      EA11(3) = DD1
      EA11(4) = DD2
      EA11(5) = DD3
      EA11(6) = DD4
      EA11(7) = DD5
      EA11(8) = DD6
      EA11(9) = DD7
      EA11(10) = DS1
      DO I1=2,9
       HA11(I1) = 9
       IF (I1 .LT. 8) THEN
        DA11(I1,I1+1) = I1
        EA11(I1) = I1 * 2
       ELSE
        DA11(I1,I1-1) = I1
       END IF
       IF (I1 .NE. 9) THEN
        EA12(10-I1) = I1
       END IF
      END DO
      WRITE (6, *) HA11, DA11, EA11, EA12

      DD8 = EA23(1)
      DD9 = EA23(2)
      DD10 = EA23(3)
      DD11 = EA23(4)
      DD12 = EA23(5)
      DD13 = EA23(6)
      DD14 = EA23(7)
      DS1 = EA23(8)
      EA22(7) = EA23(8) * 2
      EA22(6) = EA23(7) * 2
      EA22(5) = EA23(6) * 2
      EA22(4) = EA23(5) * 2
      EA22(3) = EA23(4) * 2
      EA22(2) = EA23(3) * 2
      EA22(1) = EA23(2) * 2
      EA22(0) = EA23(1) * 2
      DA21(3,2) = DD8
      DA21(4,3) = DD9
      DA21(5,4) = DD10
      DA21(6,5) = DD11
      DA21(7,6) = DD12
      DA21(8,7) = DD13
      DA21(9,8) = DD14
      DA21(10,9) = DS1
      DO J=2,9
       HA21(J) = 9
       IF (J .LT. 8) THEN
        DA21(J,J+1) = J
        EA21(J) = J * 2
       ELSE
        DA21(J,J-1) = J
       END IF
       IF (J .NE. 9) THEN
        EA22(10-J) = J
       END IF
      END DO
      WRITE (6, *) HA21, DA21, EA21, EA22
      STOP 
      END
