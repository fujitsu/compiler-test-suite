      DIMENSION A(10),B(10),C(10)
      DATA A/10*1.0/
      DATA B/10*2.0/
      K=0
      DO 20 I=1,10
        C(I)=A(I)+B(I)
        IF ( C(I).NE.3 ) K=1
20    CONTINUE
      DO 10 J=1,10
10    CONTINUE
      IF ( K .EQ. 0) THEN
          PRINT *, 'OK'
        ELSE
          PRINT *, 'NG'
      ENDIF
      STOP
      END
