      DIMENSION  A(10),B(10,10)
      DATA  A,B,N/5*1.0,5*0.0,100*2.0,10/
      DO 10 J=1,10
        DO 10 I=1,N
          B(I,J) = 0.0
          IF(A(I) .EQ. 0.0) THEN
            B(I,J) = 1.0
          ENDIF
   10 CONTINUE
      WRITE(6,*) B
      STOP
      END
