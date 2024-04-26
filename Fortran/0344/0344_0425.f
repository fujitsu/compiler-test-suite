      PROGRAM MAIN
      DO 10 I=1,10
        DO 10 J=1,10
          IA = J
          IB = I
          IF (BTEST(IA,IB)) THEN
            IA = IA + I
            IB = IBSET(IA,I)
          ELSE
            IB = IB + J
            IB = MAX(IB,IA)
            IA = IBCLR(IA,IB)
          ENDIF
          IC = IA + IB
   10 CONTINUE
      
      WRITE(6,*) IA,IB,IC
      STOP
      END
