      PROGRAM MAIN
      INTEGER A(100)/100*5/,B(100)/100*2/
      LOGICAL L1(100)/100*.TRUE./,L2
      DO 10 I=1,100
        L2 = BTEST(I,A(I))
        L1(I) = IBSET(I,B(I)).GT.B(I)
        IF (L2.OR.L1(I)) THEN
          IF (BTEST(A(I),B(I))) THEN
            IF (I.GT.32) THEN
              L2 = L2.AND..TRUE.
              L1(I) = IBSET(MOD(A(I),B(I)),A(I)**2).EQ.0
            ELSE
              L1(I) = BTEST(IBCLR(I,2),IBCLR(1,3))
              L2 = L2.AND.L1(I)
            ENDIF
          ELSEIF (BTEST(B(I),A(I))) THEN
            L2 = L1(I)
          ENDIF
        ENDIF
   10 CONTINUE
      
      WRITE(6,*) L1
      WRITE(6,*) L2
      STOP
      END
