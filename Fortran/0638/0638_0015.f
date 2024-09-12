          LOGICAL*4 L1(100),L2(100),L3(100),L/.FALSE./
          REAL*4    G1(100),G2(100),G3(100),G/2.0/
          INTEGER*4 A1(100)/100*1/,A2(100)/100*2/
          INTEGER*4 A3(100)/100*3/,A/2/
          DO 10 J = 1,A
          DO 10 I = 1,100
            A1(I)=I
            A2(J)=I
   10       A3(I)=J
          WRITE(6,*) 'A2(2).1',A2(2)
          DO 20 J = 1,2
          DO 20 I = 1,100
            L1(I) = A1(I).NE.A3(I)
            L2(I) = A2(2).EQ.A
   20       L3(I) = L1(I).OR..NOT.L2(I)
          WRITE(6,*) 'A2(2).2',A2(2)
          DO 30 J = 1,5
            DO 30 I = 1,100
              G1(I)=1.0*G
              G2(I)=2.0
              G3(I)=3.0*J
              IF(L1(I)) THEN
                G1(I)= 3.0*J
              ENDIF
              IF(L2(I)) THEN
                G2(I)= 1.0*G
              ENDIF
              IF(L3(I)) THEN
                G3(I)= 2.0
              ENDIF
   30     CONTINUE
          WRITE(6,*) 'A2(2).3',A2(2)
          DO 40 J = 1,A
          DO 41 I = 1,50
            L1(I) = G3(I).EQ.G2(I)
            IF(L2(I)) THEN
             IF(.NOT.L1(I)) GOTO 40
             IF(L3(I)) THEN
               G3(I) = G2(I)
             ENDIF
            ENDIF
   41     CONTINUE
   40     CONTINUE
          WRITE(6,*) 'A2(2).4',A2(2)
          DO 50 J= 1,10
           DO 51 I= 1,20
             IF(L1(I)) THEN
              A = I+J
              A1(A) = I+J
             ENDIF
             IF(L2(I)) THEN
              A2(I) = 10
             ENDIF
   51      CONTINUE
          WRITE(6,*) 'A2(2).5',A2(2)
          CALL SUB(J,A,L1,L2,G1)
          WRITE(6,*) 'A2(2).6',A2(2)
           DO 50 I = 1,20,2
             IF(L1(I)) THEN
               A = I+J
               A1(A) = I+J
             ENDIF
             IF(L2(I)) THEN
               A2(I) = 20
             ENDIF
   50     CONTINUE
          WRITE(6,*) 'A2(2).7',A2(2)
          WRITE(6,*) L1,L2,L3,L,G1,G2,G3,G,A1,A2,A3,A
          STOP
          END
          SUBROUTINE SUB(N,M,L1,L2,G1)
          INTEGER*4 N,M
          LOGICAL*4 L1(100),L2(100)
          REAL*4 G1(100)
          DO 100 I=1,M,2
          DO 100 J=1,N
            L1(I)=L1(I).OR.L1(I)
            L2(I)=.NOT.L2(I).AND..NOT.L2(I).OR.(L2(10).AND..NOT.L2(10)) 
            G1(I) = FLOAT(J)
  100     CONTINUE
          RETURN
          END
