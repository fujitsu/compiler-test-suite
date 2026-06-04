program main
  TYPE STR
     REAL*4  A(20,20),B(20,20),C(20,20),H(20,20)
  END type STR
  TYPE(STR) STR_DATA
  DATA   N/10/,LT/1/,LTD/2/

  DO I=1,20
     DO J=1,20
        STR_DATA%A(J,I) = J+I
        STR_DATA%B(J,I) = J+I+1
        STR_DATA%C(J,I) = J+I+2
        STR_DATA%H(J,I) = (J+I)*1.1
     END DO
  END DO

  DO L=1,N
     IM= N-L+1
     NL=N+L
     DO I=1,IM
        LL=LT+I
        STR_DATA%H(NL,LL)=STR_DATA%A(I,L)*STR_DATA%B(I,L)
        LLD=LTD+I
        STR_DATA%H(LLD-1,LL)=STR_DATA%B(I,L)+STR_DATA%C(I,L)
        STR_DATA%H(LLD,LL)=STR_DATA%C(I,L)-STR_DATA%A(I,L)

        LL0=I+1
        STR_DATA%H(LL0,LL)=STR_DATA%B(I,L)*2.
        STR_DATA%H(LL0-1,LL)=STR_DATA%C(I,L)/2.0
        STR_DATA%H(LL-1,LL)=STR_DATA%A(I,L)/2.0*STR_DATA%B(I,L)
     END DO
  END DO

  WRITE(6,*) STR_DATA%H
  STOP
END program main
