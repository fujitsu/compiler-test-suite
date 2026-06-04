program main
  TYPE STR
     REAL*8  A1(20),B1(20),C1(20)
     REAL*8  A2(20,20),B2(20,20),C2(20,20)
     REAL*8  A3(20,20,20),B3(20,20,20),C3(20,20,20)
  END type STR
  TYPE(STR) STR_DATA

  DATA  NN/16/
  do I=1,20
     STR_DATA%A1(I)=I
     STR_DATA%B1(I)=I+1
     STR_DATA%C1(I)=I+2
     do J=1,20
        STR_DATA%A2(J,I)=I+J
        STR_DATA%B2(J,I)=I+J+1
        STR_DATA%C2(J,I)=I+J+2
        do K=1,20
           STR_DATA%A3(K,J,I)=I+K+J
           STR_DATA%B3(K,J,I)=I+K+J+1
           STR_DATA%C3(K,J,I)=I+K+J+2
        end do
     end do
  end do

  DO K=1,20
     STR_DATA%A1(K) = STR_DATA%B1(K)+STR_DATA%C1(K)
     DO J=1,20
        STR_DATA%A2(K,J)= STR_DATA%B2(K,J)*STR_DATA%C2(K,J)
        DO I=2,NN
           STR_DATA%B3(K,J,I)=STR_DATA%A1(K)*2.D0-STR_DATA%A3(K,J,I+1)
           STR_DATA%A3(K,J,I)= STR_DATA%A2(K,I-1)+STR_DATA%C3(I,J,K)*STR_DATA%B3(K,J,I)
        END DO
        STR_DATA%B2(K,J)= STR_DATA%A3(K,J,2)-STR_DATA%C2(K,J)
     END DO
  END DO

  print *,' A1= ',STR_DATA%A1
  print *,' A2= ',((STR_DATA%A2(I,J),I=1,15),J=1,15)
  print *,' A3= ',(((STR_DATA%A3(I,J,K),I=1,10),J=1,10),K=1,10)
  STOP
END program main
