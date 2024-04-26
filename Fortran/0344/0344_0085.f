      REAL A(10),S/5/
      DATA A/0,1,2,0,1,2,0,1,2,0/
      DO 10 I=1,10
        IF(A(I).EQ.0) THEN
          S=A(I)
        ENDIF
   10 CONTINUE
      WRITE(6,*) S
      STOP
      END
