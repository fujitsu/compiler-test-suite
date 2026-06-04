program main
  TYPE STR
     REAL*4  A(40,40),B(40,40),C(40,40)
  END type STR
  TYPE(STR) STR_DATA
  DATA    N1/1/,N2/2/,N3/3/,NN/20/

  DO I=1,40
     DO J=1,40
        STR_DATA%A(J,I) = J+I
        STR_DATA%B(J,I) = J+I+1
        STR_DATA%C(J,I) = J+I+2
     END DO
  END DO

  DO I=1,NN
     L1 = I+N1+N2
     L2 = I+N3+1
     LL = I+N1+N3
     DO J=1,LL
        K1=J+N1+1
        K2=J+N3-1
        STR_DATA%A(K1,L1)=STR_DATA%B(K2,L2)+STR_DATA%C(J,I)
        STR_DATA%B(J+N2+N1,I+2)=STR_DATA%A(J+1,I+N2-1)+STR_DATA%C(J,I)
     END DO
  END DO

  WRITE(6,*) STR_DATA%A
  WRITE(6,*) STR_DATA%B
  STOP
END program main
