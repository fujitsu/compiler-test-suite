      INTEGER*4 IA(10),IB(10),M(10)
      DATA IA/10*2/
      DATA IB/2,0,4,6,7,1,1,10,4,7/
      DO 20 I=1,10
        M(I)=IA(I)+IB(I)
        IF(MOD(M(I),2).EQ.0) THEN
          IA(I)=ISHFT(1,IB(I))
        ELSE
          IA(I)=IB(I)
        ENDIF
   20 CONTINUE
      WRITE(6,*) IA
      END
