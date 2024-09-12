      NAMELIST     /NAMEL/   I1,I2,I3,I4,I5
     +                       R1,R2,R3,R4,A ,B ,D ,
     +                       C1,C2,C3,C4,C
     +                       I ,J ,K ,L ,
     +                       LC1,LC2
      DIMENSION    A(10),B(10),D(10)
      COMPLEX      C1,C2,C3,C4,C(10)
      INTEGER*2    K,LC1
      INTEGER*4    L,LC2
      data a/10*0/,b/10*0/,c/10*0/,i5r1/0/,ci/0/

    1 CONTINUE
         I1    =   1
         I2    =   2
         R1    =   1.
         R2    =   2.

    2 CONTINUE
         DO    100 I=1,10
         I5    =   I    *    2
         I5    =   A(I) *    I1
         D(I)  =   R1   +    FLOAT(I)
         A(I)  =   I2   *    I
  100    C1    =   CMPLX(A(I)+1 , R2)

    3 CONTINUE
         R3    =   3.
         R4    =   4.
         I3    =   3
         I4    =   4

    4 CONTINUE
         DO    110 J=1,5
         IF(J .LE. 2)   GO TO 5
         D(J)  =   R3   *    J
         IF(J .EQ. 3)   GO TO 7
         D(J+5)=   R4   /    J
         GO TO 6
    5 CONTINUE
         A(J)  =   IFIX(A(J+1))   +    I3
         I1    =   IFIX (A(J))
    6 CONTINUE
         IF(J .GE. 2)   GO TO 9
         R1    =   R1   **   J
         GO TO 8
    7 CONTINUE
         A(J)  =   IFIX(A(J+2) + FLOAT(I4))
         I2    =   IFIX (A(J))
    8 CONTINUE
         I3    =   I1   +    I2   +    J
         I4    =   IFIX(A(J+3) + J * J)
         R2    =   R2   **   J
    9 CONTINUE
         B(J)  =   FLOAT(I2 + I3 + I4 - J)
  110    C2    =   CMPLX(REAL(C1) , B(J) * J)
   10 CONTINUE
         LC1   =   3
         LC2   =   2

   11 CONTINUE
         DO    190 K=1,5
         IF(K .EQ. LC1) GO TO 14
   12 CONTINUE
         IF(K .LT. LC2) GO TO 14
   13 CONTINUE
         R3    =   FLOAT(K * 4)
   14 CONTINUE
         R4    =   FLOAT(IFIX(R2 * K))
         C(K)  =   CMPLX(R4 , FLOAT(K * K))

   15 CONTINUE
         DO    190 L=1,5
         IF(L .GT. LC1) GO TO 17
   16 CONTINUE
         IF(L .LT. LC2) GO TO 17
         C(L+5)=   CMPLX( REAL(C(L) ),AIMAG(C(L) ))
         GO TO 18
   17 CONTINUE
         C(L+5)=   CMPLX(AIMAG(C(L) ), REAL(C(L) ))
   18 CONTINUE
         C3    =   CMPLX(FLOAT(K) , FLOAT(L))
  190    C4    =   C(K) +    C(L+5)    *    K    **   L

   19 CONTINUE
         WRITE(6,NAMEL)

      STOP
      END
