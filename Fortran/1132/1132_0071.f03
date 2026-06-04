program main
  TYPE STR
     REAL*8    A(30,30),B(30,30),C(30,30),D(30,30)
     INTEGER*4 L1(30),L2(30),L3(30)
  END type STR
  TYPE(STR) STR_DATA
  DATA     IT1/1/,IT2/2/,IT3/3/,IT4/4/,IT5/10/

  DO I=1,30
     STR_DATA%L1(I) = I
     STR_DATA%L2(I) =31-I
     STR_DATA%L3(I) = I-IT4
     IF ( STR_DATA%L3(I).LT.1 ) STR_DATA%L3(I)=1
     DO J=1,30
        STR_DATA%A(J,I) = J+I
        STR_DATA%B(J,I) = J+I+1
        STR_DATA%C(J,I) = J+I+2
        STR_DATA%D(J,I) = J+I+3
     END DO
  END DO

  DO J=1,STR_DATA%L1(10)
     N1 = J+IT1+IT2
     N2 = J+IT5+1
     DO I=2,N2
        N3=I+IT1+1
        N4=I+IT2-1
        STR_DATA%A(N1,N3) = STR_DATA%B(N1,N4)+STR_DATA%C(N3,I+IT3)
        STR_DATA%B(J+IT3+IT2,I-1+IT3)= STR_DATA%D(N1,N2)*2.D0
        STR_DATA%C(N3,IT3-1+I)= STR_DATA%D(N1,N3)+2.D0
     END DO
  END DO

  DO J=1,STR_DATA%L1(10)
     LL1= STR_DATA%L2(J)-2
     LL2= STR_DATA%L3(J)+1
     N1 = J+IT1+IT2
     N2 = J+IT5+1
     DO I=2,N2
        N3=I+IT1+1
        N4=I+IT2-1
        STR_DATA%A(N2,N3) = STR_DATA%B(N2,IT3+I-1)+STR_DATA%C(N4,I+IT3)
        STR_DATA%B(J+IT3+IT2,I-1+IT3)= STR_DATA%D(N1,N2)*2.D0
        STR_DATA%C(N3,IT3-1+I)= STR_DATA%D(N1,N3)+2.D0
        STR_DATA%L1(LL1)=STR_DATA%L1(LL1)+LL2*I
        STR_DATA%D(IT2-1+J,N2-IT5)=2.D0
     END DO
  END DO

  WRITE(6,*) STR_DATA%A
  WRITE(6,*) STR_DATA%B
  WRITE(6,*) STR_DATA%C
  STOP
END program main
