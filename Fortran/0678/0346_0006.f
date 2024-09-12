      DIMENSION A(257),B(257),C(257)
      DATA A/257*1.0/
      DATA B/257*2.0/
      DO 20 I=1,257
        C(I)=A(I)+B(I)
20    CONTINUE
      K=0
      DO 257 J=1,257
        IF ( C(J).NE.3 ) K=1
257    CONTINUE
      IF ( K .EQ. 0) THEN
          PRINT *, 'OK'
        ELSE
          PRINT *, 'NG'
      ENDIF
      STOP
      END
