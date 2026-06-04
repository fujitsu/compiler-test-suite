PROGRAM CV3820
  TYPE STR
     real*8  A(20),B(20),C(20)
  END type STR
  TYPE(STR) STR_DATA

  DO I=1,20
     STR_DATA%A(I) = I*1.1
     STR_DATA%B(I) = I*2.2
     STR_DATA%C(I) = I*3.3
  END DO

  N = 10
  DO I=2,10
     STR_DATA%A(I+N) = STR_DATA%B(I) + STR_DATA%C(N)
     IF ( I.GT.7 ) CYCLE
     STR_DATA%B(I) = STR_DATA%A(I+N-1) *2.
     N = N -1
     STR_DATA%C(N) = STR_DATA%A(I+N) + STR_DATA%B(I-1)
  END DO
  WRITE(6,*) ' **** CVCT3820_str *** NO.1 **** '
  WRITE(6,*) ' A = ',STR_DATA%A
  WRITE(6,*) ' B = ',STR_DATA%B
  WRITE(6,*) ' C = ',STR_DATA%C

  N = 15
  DO I=2,10
     STR_DATA%A(I+N) = STR_DATA%B(I) + STR_DATA%C(N)
     IF ( I.GT.6 ) CYCLE
     STR_DATA%B(I) = STR_DATA%A(I+N-1) *2.
     N = N -2
     STR_DATA%C(N) = STR_DATA%A(I+N) + STR_DATA%B(I-1)
  END DO
  WRITE(6,*) ' A = ',STR_DATA%A
  WRITE(6,*) ' B = ',STR_DATA%B
  WRITE(6,*) ' C = ',STR_DATA%C

  STOP
END PROGRAM CV3820
