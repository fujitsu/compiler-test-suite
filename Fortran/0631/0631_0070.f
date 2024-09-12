      COMPLEX      CV21(10,10)/100*0/
      COMPLEX      A,B
        IF(1.GT.0) THEN
        A=(1.0,0.0)
        B=(1.0,0.0)
        ENDIF
        DO   10  J=1,8
        DO   10  I=1,8
          CV21(I,J) = SIN(A+B)
   10   CONTINUE
        WRITE(6,*) CV21
      STOP
      END
