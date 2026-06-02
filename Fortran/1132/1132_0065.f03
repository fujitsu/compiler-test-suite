program main
  TYPE STR
     REAL*8  A1(20),B1(20),C1(20)
     REAL*8  A2(20,20),B2(20,20),C2(20,20)
     REAL*8  A3(20,20,20),B3(20,20,20),C3(20,20,20)
     INTEGER*4  L(20)
  END type STR
  TYPE(STR) STR_DATA

  DATA  NN/16/
  do I=1,20
     STR_DATA%A1(I)=I
     STR_DATA%B1(I)=I+1
     STR_DATA%C1(I)=I+2
     STR_DATA%L(I) =21-I
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

  do K=2,NN
     do J=2,NN
        STR_DATA%A2(K,J)=STR_DATA%B2(K,J)*2.0
        do I=2,NN
           STR_DATA%A3(K,J,I)=STR_DATA%A3(I,J,K)+STR_DATA%B3(K,I,J)*STR_DATA%C3(K,J,I)
        end do
        STR_DATA%B3(J,2,K)=STR_DATA%A2(K,J)-STR_DATA%C2(J,K)+STR_DATA%A1(J)
     end do
     STR_DATA%A1(STR_DATA%L(K)) = STR_DATA%B1(K)+STR_DATA%C1(K)
  end do

  do K=2,NN
     STR_DATA%B1(STR_DATA%L(K))=FLOAT(K)
     do J=2,NN
        STR_DATA%C2(K,J)=STR_DATA%B2(K,J)*2.0+STR_DATA%B1(J)
        do I=2,NN
           STR_DATA%C3(K,J,I)=STR_DATA%A3(I,J,K)+STR_DATA%B3(K,I,J)*STR_DATA%C2(J,K)
        end do
        STR_DATA%A3(J,2,K)=STR_DATA%A2(K,J)-STR_DATA%C2(J,K)*STR_DATA%A1(K)
     end do
     STR_DATA%A1(K) = STR_DATA%B1(K)+STR_DATA%C1(K)
  end do

  WRITE(6,*) ' A1= ',STR_DATA%A1
  WRITE(6,*) ' A2= ',((STR_DATA%A2(I,J),I=1,15),J=1,15)
  WRITE(6,*) ' A3= ',(((STR_DATA%A3(I,J,K),I=1,10),J=1,10),K=1,10)
  STOP
END program main
