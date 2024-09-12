           LOGICAL    SW2 , SW6 , SW8

           SW2 = .FALSE.
           SW6 = .TRUE.
           SW8 = .TRUE.
           CALL SUB('SUB-1',SW2,SW6,SW8)

           SW2 = .TRUE.
           SW6 = .TRUE.
           SW8 = .FALSE.
           CALL SUB('SUB-2',SW2,SW6,SW8)

           SW2 = .FALSE.
           SW6 = .TRUE.
           SW8 = .FALSE.
           CALL SUB('SUB-3',SW2,SW6,SW8)

           SW2 = .TRUE.
           SW6 = .TRUE.
           SW8 = .TRUE.
           CALL SUB('SUB-4',SW2,SW6,SW8)

           SW2 = .FALSE.
           SW6 = .FALSE.
           SW8 = .FALSE.
           CALL SUB('SUB-5',SW2,SW6,SW8)

         STOP
         END
      SUBROUTINE   SUB(MEMO,SW2,SW6,SW8)
         REAL*8    MEMO
         LOGICAL   SW2 , SW6 , SW8
         INTEGER   A(7,7) , B(2,2,2)
         REAL      C(7)
         NAMELIST  /NAMEL/ A , B , C , D , E , F ,
     -                     I , J , M , N

         WRITE(6,2000) MEMO
 2000         FORMAT(1H0,A8)

    1 CONTINUE
         N = 2
         I = N + 2
         M = I + N
         J = 2
    2 CONTINUE
         SW2 = .NOT. SW2
         N = 1
         I = 0
         M = 5
         D = 0
         E = 0
         F = 0
         C(1) =2
         C(2) = 0.
         C(3) = 0.
         C(4) = 0.
         C(5) = 0.
         C(6) = 0.
         C(7) = 0.
         A(1,1) = 0
         A(1,2) = 0
         A(1,3) = 0
         A(1,4) = 0
         A(1,5) = 0
         A(1,6) = 0
         A(1,7) = 0
         A(2,1) = 0
         A(2,2) = 0
         A(2,3) = 0
         A(2,4) = 0
         A(2,5) = 0
         A(2,6) = 0
         A(2,7) = 0
         A(3,1) = 0
         A(3,2) = 0
         A(3,3) = 0
         A(3,4) = 0
         A(3,5) = 0
         A(3,6) = 0
         A(3,7) = 0
         A(4,1) = 0
         A(4,2) = 0
         A(4,3) = 0
         A(4,4) = 0
         A(4,5) = 0
         A(4,6) = 0
         A(4,7) = 0
         A(5,1) = 0
         A(5,2) = 0
         A(5,3) = 0
         A(5,4) = 0
         A(5,5) = 0
         A(5,6) = 0
         A(5,7) = 0
         A(6,1) = 0
         A(6,2) = 0
         A(6,3) = 0
         A(6,4) = 0
         A(6,5) = 0
         A(6,6) = 0
         A(6,7) = 0
         A(7,1) = 0
         A(7,2) = 0
         A(7,3) = 0
         A(7,4) = 0
         A(7,5) = 0
         A(7,6) = 0
         A(7,7) = 0
         B(1,1,1) = 0
         B(1,1,2) = 0
         B(1,2,1) = 0
         B(1,2,2) = 0
         B(2,1,1) = 0
         B(2,1,2) = 0
         B(2,2,1) = 0
         B(2,2,2) = 0
         IF (.NOT. SW2) GO TO 5
    3 CONTINUE
         D = 2.0
         E = 3.0 - D / D * D
         F = E + 4 ** (J + M)
         F = D + C(1) ** (J - 1)
    4 CONTINUE
         A(I+N,I+N) = A(N,N) + 2 * (2 * I / 2)
         B(N,N,N) = B(1,1,1) + M
         I = I + 1
         C(I) = C(I) + C(1) * (I + N)
    5 CONTINUE
         A(I+N,I+N) = A(N,N) + 2 * (4 * (J + M) / (J + M))
         B(N+1,N+1,N+1) = B(1,1,1) + M + J
         I = I + 1
         C(I) = C(I) + C(1) ** (5 - J)
    6 CONTINUE
         SW6 = .NOT. SW6
         J = J + 2
         C(I+1) = C(I+1) + C(1) * (J - 5)
         IF (.NOT. SW6) GO TO 8
    7 CONTINUE
         M = M + N
         C(2*N-1) = 3
         E = 0.
         GO TO 5
    8 CONTINUE
         SW8 = .NOT. SW8
         M = M - N
         C(2*N-1) = 5
         IF (SW8) GO TO 4
    9 CONTINUE
         WRITE(6,NAMEL)
         RETURN
      END
