      INTEGER A(10),S/5/
      DATA A/10*(0,3)/
      DO 10 I=1,10
        IF(A(I).EQ.9) THEN
          S=A(I)
        ENDIF
   10 CONTINUE
      WRITE(6,*) S
      STOP
      END
