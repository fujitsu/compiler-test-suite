program main
  TYPE STR
     REAL*8     A(20),B(20),C(20),D(20,20)
     INTEGER*8  L(20)
  END type STR
  TYPE(STR) STR_DATA

  DATA  N1,N2/1,10/,N3/2/

  STR_DATA%D = -3.0
  DO I=1,20
     STR_DATA%A(I) = I*1.1
     STR_DATA%B(I) = I*3.3
     STR_DATA%C(I) = I*5.5
     STR_DATA%L(I) = 21-I
  END DO

  DO I=3,N2
     STR_DATA%A(I+N1*2) = STR_DATA%A(I+N1*N2) + STR_DATA%B(I) + STR_DATA%C(I)
  END DO

  DO I=3,N2
     STR_DATA%A(I+N1*N1) = STR_DATA%A(I+N1*N2) + STR_DATA%B(I) + STR_DATA%C(I)
  END DO

  DO I=1,3
     DO J=2,N2
        STR_DATA%B(J+I*2) = STR_DATA%B(J+I*N3) + STR_DATA%D(J+2*I,STR_DATA%L(I))*STR_DATA%A(J)
        STR_DATA%D(J+I,I) = -STR_DATA%A(J)
     END DO
  END DO

  DO I=2,5
     DO J=3,N2
        STR_DATA%D(I*2*N1,J) = STR_DATA%D(I*N1,J+N1) + STR_DATA%A(I+J)
        STR_DATA%C(N2*2-J) = STR_DATA%C(N2-J+1) - STR_DATA%B(J)
     END DO
  END DO

  DO I=20,N2,-1
     STR_DATA%C(I-N1*N1) = STR_DATA%C(I-N1*N3) + STR_DATA%A(I)
  END DO
  WRITE(6,*) ' **** CVCT3161_str **** '
  WRITE(6,*) ' A = ',STR_DATA%A
  WRITE(6,*) ' B = ',STR_DATA%B
  WRITE(6,*) ' C = ',STR_DATA%C
  WRITE(6,*) ' D = ',STR_DATA%D
  STOP
END program main
