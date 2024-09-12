       DIMENSION A(1200),B(4000),C(8192),D(20480)
       data c/8192*0/
       DO 10 I= 1,1200,2
          S = S + I
 10    CONTINUE
       SS = 0.0
       DO 20 I= 1,4000,4
          SS = SS + I
 20    CONTINUE
       DO 30 I= 1,8192,8
          C(I) = I
 30    CONTINUE
       SUM = 0.
       DO 40 I= 1,2048,10
          SUM  = SUM + C(I)
 40    CONTINUE
       WRITE(6,*) S,SS,SUM
       STOP
       END
