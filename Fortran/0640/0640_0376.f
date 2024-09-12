      PROGRAM MAIN
      REAL*8   A(100),B(100),C(100),E(100),F(100),MAXD
      INTEGER  L,N/30/

      CALL ITDATA(A,B,C,E,F,L)
      CALL SUB1(A,B,C,E,F,N)
       WRITE(6,*) '-- A --'
       WRITE(6,91) A
       WRITE(6,*) '-- B --'
       WRITE(6,91) B
       WRITE(6,*) '-- C --'
       WRITE(6,91) C
       WRITE(6,*) '-- E --'
       WRITE(6,91) E
       WRITE(6,*) '-- F --'
       WRITE(6,91) F
 91    FORMAT(5(1X,e14.6))

      CALL ITDATA(A,B,C,E,F,L)
      CALL SUB2(A,B,C,E,F,N)
       WRITE(6,*) '-- A --'
       WRITE(6,91) A
       WRITE(6,*) '-- B --'
       WRITE(6,91) B
       WRITE(6,*) '-- C --'
       WRITE(6,91) C
       WRITE(6,*) '-- E --'
       WRITE(6,91) E
       WRITE(6,*) '-- F --'
       WRITE(6,91) F

      CALL ITDATA(A,B,C,E,F,L)
      CALL SUB3(A,B,C,E,F,MAXD,IDX,N)
       WRITE(6,*) '-- A --'
       WRITE(6,91) A
       WRITE(6,*) '-- B --'
       WRITE(6,91) B
       WRITE(6,*) '-- C --'
       WRITE(6,91) C
       WRITE(6,*) '-- E --'
       WRITE(6,91) E
       WRITE(6,*) '-- F --'
       WRITE(6,91) F
       WRITE(6,*) MAXD
       WRITE(6,*) IDX
      END
      SUBROUTINE SUB2(A,B,C,E,F,N)
      REAL*8   A(100),B(100),C(100),E(100),F(100)
      INTEGER H,I,J,K,L,N
       DO 60 K=1,N
        DO 50 J=1,N
         DO 40 I=3,N
           H = IABS(I + J - K) + 1
           IF(A(I).LT.A(I-1)) THEN
             A(I) =  B(K) * C(I) - H * B(H)
           ENDIF
           L = IABS(I + J - K) + 1
           F(I) = F(I-1)*J + B(I)*K
           IF(L.LT.3)    L = N
           E(L) =  E(L-2) - L*2
           C(I) = F(I)+ J - K
           E(L) = MAX(A(I) + H ,E(L))
 40      CONTINUE
 50     CONTINUE
 60    CONTINUE
       END
      SUBROUTINE SUB3(A,B,C,E,F,MAXD,IDX,N)
      REAL*8   A(100),B(100),C(100),E(100),F(100),DIF,MAXD
      INTEGER H,I,J,K,L,N
       MAXD = 0
       L =  1
       DO 90 K=1,N
        DO 80 J=1,N
         DO 70 I=3,N
           H = IABS(I + J - K) + 1
           A(I) =  B(K) * C(I) - H * B(H)
           F(I) = F(I-1)*J + B(I)*K
           DIF = F(I) - MAXD
           E(I) = A(I) + H
           IF(DIF.GE.0) THEN
            MAXD = F(I)
            IDX = I
           ENDIF
           L = L + ((-1)**(J+1))
           E(I) =  E(I-2) - L*2
           C(I) = F(L)+ J - K
 70      CONTINUE
 80     CONTINUE
 90    CONTINUE
      END
      SUBROUTINE SUB1(A,B,C,E,F,N)
      REAL *8  A(100),B(100),C(100),E(100),F(100)
      INTEGER H,I,J,K,L,N
      L = 1
       DO 30 K=1,N
        DO 20 J=1,N
         DO 10 I=3,N
           H = I + B(I) * 2
           A(I) =  B(K) * C(I) - H * B(H)
           F(I) = F(I-1)*J + B(I)*K
           L = I + B(I) * 2
           E(I) = A(I) + H
           E(I) =  E(I+1) - L*(I+B(I)*2)
           C(I) = F(I)+ J - K
 10      CONTINUE
 20     CONTINUE
 30    CONTINUE
       END
      SUBROUTINE ITDATA(A,B,C,E,F,L)
      REAL*8        A(100),B(100),C(100),E(100),F(100)
      INTEGER     L
      L=1
      DO 10 I=1,100
        A(I)=L
        B(I)=1
        C(I)=1
        E(I)=1
        F(I)=1
 10    CONTINUE
       END
