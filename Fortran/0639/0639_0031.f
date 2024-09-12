          REAL A(10),B(10),C(10)
          INTEGER IA(10),IB(10),IC(11)
          DATA A,B,C/10*1.0,10*2.0,10*3.0/
          DATA IA,IB,IC/10*2,10*4,11*6/

          DATA NN/10/
          II = 2
          DO 111 I = 1 , NN
            X  = A(I) + B(I)
            A(I) = C(I) +  X
            IA(I) = IB(I) * 2 * II
            IC(I+1) = IC(I) / 2 * II
            IC(I) = IA(I) - IC(I)
 111      CONTINUE
          PRINT *,A,IA,IC,X
          END
