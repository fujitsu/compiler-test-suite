      REAL       A(10)
      COMPLEX    B(10)
      DATA       A/10*3/,B/10*0/
      DO 10 I=1,10
        IF(A(I).NE.0) THEN
          B(I)=COS(CMPLX(A(I),A(I)))
        ENDIF
   10 CONTINUE
      WRITE(6,*) B
      STOP
      END
