      INTEGER*2 IA(10),IB(10)
      DATA IB/10*2/
      DO 10 I=1,10
        IA(I)=ISHFT(1,IB(I))
        CALL SUB
   10 CONTINUE
      WRITE(6,*) IA
      END

      SUBROUTINE SUB
      INTEGER*4 IC(10)
      INTEGER*4 IB(10)
      DO 20 I=1,10
   20   IC(I)=IB(I)
      CONTINUE
      RETURN
      END
