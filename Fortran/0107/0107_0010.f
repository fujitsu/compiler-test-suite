      PROGRAM MAIN
      REAL,DIMENSION(5)::A,RIGHT_RESULT
      DATA A/1.0,2.0,3.0,4.0,5.0/
      LOGICAL NO_GOOD/.FALSE./

      A=COS(A)+3.14

      DO I=1,5
         RIGHT_RESULT(I) = COS(REAL(I))+3.14
      IF(ABS((A(I)-RIGHT_RESULT(I))/A(I)).GT.0.1E-5) NO_GOOD = .TRUE.
      ENDDO
      IF (NO_GOOD) THEN
         WRITE (6,*) '?????? NG ??????'
         WRITE (6,*) '< ACTUAL RESULT >   ',A
         WRITE (6,*) '< RIGHT  RESULT >   ',RIGHT_RESULT
         WRITE (6,*) '?????? NG ??????'
      ELSE
         WRITE (6,*) '!!!!!! OK !!!!!!'
      ENDIF
      STOP
      END
