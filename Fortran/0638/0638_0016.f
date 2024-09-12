          REAL*4 A(100),B(100),C(100,100)/10000*1./,D(100)/100*0.5/
          INTEGER*4 I1/2/,I2/50/,I3/3/
          INTEGER*4 LIST(100)/10*1,10*2,10*3,50*5,20*6/
          DO 10 J = 1,10
          DO 10 I = 1,100
   10       C(I,J) = D(I) + FLOAT(J)
          DO 20 J = 1,10
          DO 20 I = 1,100
   20       B(I) = FLOAT(I+J)
          DO 30 J = 1,10
          DO 30 I = 1,100
            A(I) = B(I)
   30       B(I) = C(I,J)
          DO 11 J= 1,10,2
          DO 11 I= 1,100,5
   11       C(I,J) = 2.0+FLOAT(J)+D(I)
          DO 21 J= 1,10,2
          DO 21 I= 1,100,5
   21       B(I) = FLOAT(J)
          DO 31 J= 1,10,2
          DO 31 I= 1,100,5
            A(I) = B(I) + 2.0
   31       B(I) = C(I,J)+ 4.0
          DO 12 J = I1,I3,1
          DO 12 I = I1,I2,I3
   12       C(I,J) = D(I) +FLOAT(I2-I)
          DO 22 J= I1,I3,1
          DO 22 I= I1,I2,I3
            A(I) = B(I) + 3.0
   22       B(I) = C(I,J) + 8.0
          I1 = I1 + 2
          DO 32 J= 1,I1
          DO 32 I= I1,I2,I3
           B(I) = FLOAT(J+I+I1)
   32      D(LIST(I)) = A(LIST(I))
          WRITE(6,*) A,B,C,D,I1,I2,I3,LIST
          STOP
          END
