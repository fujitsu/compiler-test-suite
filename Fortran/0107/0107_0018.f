      PROGRAM MAIN
      REAL,DIMENSION(5)::A,B,RIGHT_RESULT
      DATA A           /-1.2,0.5,3.1,1.0,-1.0/
      DATA RIGHT_RESULT/-1.2,0.5,3.1,1.0,-1.0/
      REAL X
      LOGICAL NO_GOOD/.FALSE./
      X=GAMMA(3.0);
      IF (X<0) GOTO 10

      B=3.0;
      A=X**1.9*A;

      DO I=1,5
         RIGHT_RESULT(I) = X**1.9*RIGHT_RESULT(I)

      IF (ABS((A(I)-RIGHT_RESULT(I))/A(I)).GT.0.1E-5) NO_GOOD = .TRUE.
      ENDDO
      IF (NO_GOOD) THEN
         WRITE (6,*) '?????? NG ??????'
         WRITE (6,*) '< ACTUAL RESULT >   ',A
         WRITE (6,*) '< RIGHT  RESULT >   ',RIGHT_RESULT
         WRITE (6,*) '?????? NG ??????'
      ELSE
         WRITE (6,*) '!!!!!! OK !!!!!!'
      ENDIF
   10 STOP
      END
