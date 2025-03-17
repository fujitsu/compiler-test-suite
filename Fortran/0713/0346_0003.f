      DIMENSION A(1025),B(1025),C(1025)
      DATA A/1025*1.0/
      DATA B/1025*2.0/
      DO 20 I=1,1025
        C(I)=A(I)+B(I)
20    CONTINUE
      K=0
      DO 1025 J=1,1025
        IF ( C(J).NE.3 ) K=1
1025  CONTINUE
      IF ( K .EQ. 0) THEN
          PRINT *, 'OK'
        ELSE
          PRINT *, 'NG'
      ENDIF
      STOP
      END
