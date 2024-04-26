      PROGRAM MAIN
      INTEGER A(100),B/50/,C/0/,D/0/
      LOGICAL L1(100)/100*.FALSE./,L2/.TRUE./,L3(100)/100*.FALSE./
      
      DO 10 I=1,100
        A(I) = I
   10 CONTINUE
C
      DO 20 I=1,100
        IF (A(I).LE.IBSET(B,abs(mod(C-I,10)))) THEN
          L1(I) = BTEST(A(I),C)
          IF (L1(I).AND.(IBCLR(C,mod(I,10)).EQ.0).AND.L2) THEN
            D = A(I)
            IF (C.EQ.0) THEN
              L3(I) = .FALSE.
            ELSE
              L3(I) = BTEST(I,mod(d,3)).AND.BTEST(D,mod(I,3))
            ENDIF
          ELSE
            L3(I) = BTEST(A(I),C)
          ENDIF
        ELSE
           L3(I) = L3(I).AND.(IBSET(5,mod(I,I)).EQ.4)
        ENDIF
        L3(I) = L3(I).OR..NOT.L1(I)
   20 CONTINUE
C
      WRITE(6,*) L1
      WRITE(6,*) L2
      WRITE(6,*) L3
C
      STOP
      END







