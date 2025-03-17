      DIMENSION A(539),B(539),C(539)
      DATA A/539*1.0/
      DATA B/539*2.0/
      DO 20 I=1,539
        C(I)=A(I)+B(I)
20    CONTINUE
      K=0
      DO 539 J=1,539
        IF ( C(J).NE.3 ) K=1
539   CONTINUE
      IF ( K .EQ. 0) THEN
          PRINT *, 'OK'
        ELSE
          PRINT *, 'NG'
      ENDIF
      STOP
      END
