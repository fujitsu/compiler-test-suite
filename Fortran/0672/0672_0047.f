          IMPLICIT COMPLEX*8 (C)

          C1=(0.0,0.0)
          C2=(1.0,1.0)
          C3=(1.0,0.0)
          C4=(1.0,1.0)
          C5=(2.0,0.0)
          C6=(2.0,1.0)
          C7=(-1.0,-1.0)

          DO 100 I=1,20
          C1=C2+(C3+CEXP(C4)*C5)/C6-C7
  100     CONTINUE

          WRITE(6,200) C1
  200     FORMAT(1H1,1H ,//,20X,2(F16.7,5X) )
          STOP
          END
