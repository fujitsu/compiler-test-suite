      DIMENSION    A(3,4),B(3),C(3,5),D(5,3),E(3)
      INTEGER      SW6
      NAMELIST     /NAMEL/   A,B,C,D,E

      WRITE(6,1000)
 1000 FORMAT(1H1,'SPECIAL CASE (07)')

    1 CONTINUE
         SW6   =   2
         A(1,1)=   1.0
         A(1,2)=   1.0
         A(1,3)=   1.0
         A(1,4)=   1.0
         A(2,1)=   1.0
         A(2,2)=   1.0
         A(2,3)=   1.0
         A(2,4)=   1.0
         A(3,1)=   1.0
         A(3,2)=   1.0
         A(3,3)=   1.0
         A(3,4)=   1.0
         B(1)  =   2.0
         B(2)  =   2.0
         B(3)  =   2.0
         C(1,1)=   3.0
         C(1,2)=   3.0
         C(1,3)=   3.0
         C(1,4)=   3.0
         C(1,5)=   3.0
         C(2,1)=   3.0
         C(2,2)=   3.0
         C(2,3)=   3.0
         C(2,4)=   3.0
         C(2,5)=   3.0
         C(3,1)=   3.0
         C(3,2)=   3.0
         C(3,3)=   3.0
         C(3,4)=   3.0
         C(3,5)=   3.0
         D(1,1)=   4.0
         D(1,2)=   4.0
         D(1,3)=   4.0
         D(2,1)=   4.0
         D(2,2)=   4.0
         D(2,3)=   4.0
         D(3,1)=   4.0
         D(3,2)=   4.0
         D(3,3)=   4.0
         D(4,1)=   4.0
         D(4,2)=   4.0
         D(4,3)=   4.0
         D(5,1)=   4.0
         D(5,2)=   4.0
         D(5,3)=   4.0
         E(1)  =   5.0
         E(2)  =   5.0
         E(3)  =   5.0
    2 CONTINUE
         T     =   0.0
         SW6   =   SW6  -    1
    3 DO 6  I  =   1,3
    4 DO 5  J  =   1,3
         A(I,J)=   0.0
         T     =   T    +    1.0
    5 CONTINUE
         A(I,4) =  A(I,4)   +   T
    6 CONTINUE
         IF(SW6 .EQ. 0) GO TO 9
    7 DO 11 L  =   1,3
         B(L)  =   0.0
    8 DO 10 M  =   1,5
         C(L,M)=   FLOAT(L + M - 1)
         D(M,L)=   FLOAT(M * 2 + L)
         IF(SW6 .EQ. 1) GO TO 2
    9 CONTINUE
         B(L)  =   B(L) +    C(L,M)    *    D(M,L)
   10 CONTINUE
         E(L)  =   B(L) /    5.0  *    B(L)
   11 CONTINUE
         WRITE(6,NAMEL)

      STOP
      END
