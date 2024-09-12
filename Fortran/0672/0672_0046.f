          COMPLEX*8 C1(5),C2,C3
          C2=(1.0,2.0)
          C3=(3.0,1.0)
          DO 100 I =1, 5
          C1(I)=CEXP(C2 + C3)
          C2=C2+C3
          C3=C2+1.0
  100     CONTINUE
          WRITE(6,1) C1,C2,C3
    1     FORMAT(2(1X,'(',E15.6,',',E15.6,')'))
          STOP
          END
