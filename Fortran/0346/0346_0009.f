      DIMENSION A(767),B(767),C(767)
      DATA A/767*1.0/
      DATA B/767*2.0/
      DO 20 I=1,767
        C(I)=A(I)+B(I)
20    CONTINUE
      K=0
      DO 767 J=1,767
        IF ( C(J).NE.3 ) K=1
767   CONTINUE
      IF ( K .EQ. 0) THEN
          PRINT *, 'OK'
        ELSE
          PRINT *, 'NG'
      ENDIF
      STOP
      END
