      INTEGER SW3,SW14

         SW3  =    1
         SW14 =    1
         CALL SUB('SUB-1',SW3,SW14)

         SW3  =    1
         SW14 =    2
         CALL SUB('SUB-2',SW3,SW14)

         SW3  =    2
         SW14 =    3
         CALL SUB('SUB-3',SW3,SW14)

         SW3  =    2
         SW14 =    1
         CALL SUB('SUB-4',SW3,SW14)

         SW3  =    3
         SW14 =    1
         CALL SUB('SUB-5',SW3,SW14)

         SW3  =    3
         SW14 =    3
         CALL SUB('SUB-6',SW3,SW14)

      STOP
      END

      SUBROUTINE   SUB(MEMO,SW3,SW14)
      COMMON       /COMN01/ K
      COMMON       /COMN02/ I1,R2
      COMMON       /COMN03/ R3
      REAL*8       MEMO
      INTEGER      SW3,SW14
      NAMELIST     /NAMEL/   I1,I2,I3,I4,
     +                       R1,R2,R3,R4,
     +                       A ,I ,J ,K ,
     +                       LC1,LC2,LC3,
     +                       L ,M ,N
      DIMENSION    A(10)

      WRITE(6,2000)MEMO
 2000 FORMAT(1H0,A8)

    1 CONTINUE
         I     =   1
         J     =   1
         K     =   1
         I1    =   1
         I2    =   1
         I3    =   1
         I4    =   1
         R1    =   1.
         R2    =   1.
         R3    =   1.
         R4    =   1.
         A(1)  =   1.
         A(2)  =   1.
         A(3)  =   1.
         A(4)  =   1.
         A(5)  =   1.
         A(6)  =   1.
         A(7)  =   1.
         A(8)  =   1.
         A(9)  =   1.
         A(10) =   1.
         LC1   =   2
         LC2   =   1
         LC3   =   2

    2 CONTINUE
         K     =   K    +    1
         L     =   K    *    I
         M     =   L    -    K    +    J
         N     =   M    /    M    +    1

    3 CONTINUE
         SW3   =   MOD(SW3,4)     +    1
         A(K)  =   FLOAT(L ** 2)
         A(K+1)=   IFIX(FLOAT(J * 3) / J)
         GO TO (4,5,6,13),SW3
    4 CONTINUE
         I1    =   4    *    I
         I2    =   2    *    J
         GO TO 8
    5 CONTINUE
         R1    =   5.1  /    K
         R2    =   5    **   L
         GO TO 7
    6 CONTINUE
         CALL  SUB01
         IF(LC1 .GE. I) GO TO 10
         GO TO 9
    7 CONTINUE
         R3    =   3    *    M
         R4    =   FLOAT(L)  /    R2
         GO TO 9
    8 CONTINUE
         I3    =   IFIX(A(I + J - K + 1))   **   I1
         I4    =   I2   /    IFIX(A(K))
         GO TO 7
    9 CONTINUE
         CALL  SUB02
         GO TO 14
   13 CONTINUE
         A(K+N)=   FLOAT(2)  **   M
         A(K/K+8)= A(K+N)    *    L
   14 CONTINUE
         SW14  =   MOD(SW14,3)    +    1
         I     =   I    +    1
         L     =   L    +    1
         A(L/L+9)= I    +    J    -    K    *    L    /    FLOAT(M) ** N
         GO TO(3,8,15),SW14

   10 CONTINUE
         A(J)  =   FLOAT(K + 1)   *    FLOAT(J)
         A(J/J+6)= A(J) +    N
         IF(LC2 .EQ. J) GO TO 12
   11 CONTINUE
         A(K)  =   A(K) /    L    **   M
         A(K+N+1)= I    **   A(K)
         LC1   =   LC1  +    1
   12 CONTINUE
         A(I+J+K)= I    +    J    -    K
         A(I/I+7)= L    *    M    /    N    **   K
   15 CONTINUE
         CALL  SUB03
         M     =   M    +    1
         J     =   J    +    2
         IF(LC3 .GE. K) GO TO 2

   16 CONTINUE
         WRITE(6,NAMEL)

      RETURN
      END

      SUBROUTINE   SUB01
      COMMON       /COMN01/ K
         K=K
      RETURN
      END

      SUBROUTINE   SUB02
      COMMON       /COMN02/ I1,R2
         I1=I1
         R2=R2
      RETURN
      END

      SUBROUTINE   SUB03
      COMMON       /COMN03/ R3
         R3=R3
      RETURN
      END
