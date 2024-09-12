          INTEGER*4 IMP1(10),IMP2(10),IMP3(10),N/4/
          REAL*4    IMPA(10),IMPB(10),IMPC(10)
          REAL*4    A(10,10),B(10,10),C(10,10),D(10,10),E(10,10),
     *              F(10,10),G(10,10),H(10,10)
          DO 10 J = 1,10
          DO 20 I = 1,10
            A(I,J) = I
            B(I,J) = I
            C(I,J) = I
            D(I,J) = I
            E(I,J) = I
            F(I,J) = I
            G(I,J) = I
            H(I,J) = I
            IMPA(I) = A(I,J)+B(I,J)+C(I,J)+D(I,J)+E(I,J)+F(I,J)
     *               +G(I,J)+H(I,J)*2.0
   20       IMPB(I) = A(I,J)+B(I,J)+C(I,J)+D(I,J)+E(I,J)+F(I,J)
     *               +G(I,J)+H(I,J)*2.0+IMPA(I)
            IMPC(J) = 1.0
            IMP1(J) = 1
             IMP2(J) = 2
   10        IMP3(J) = 3
          DO 30 J=1,10
          DO 31 I=1,10,N
            A(I,J) = A(I,J) + 1.0
            B(I,J) = B(I,J) + 2.0
            C(I,J) = C(I,J) + 3.0
            D(I,J) = D(I,J) + 4.0
            E(I,J) = E(I,J) + 5.0
            F(I,J) = F(I,J) + 6.0
            G(I,J) = G(I,J) + 7.0
            H(I,J) = H(I,J) + 8.0
            IMPA(I)=A(I,J)+B(I,J)+C(I,J)+D(I,J)+E(I,J)+F(I,J)
     *              +G(I,J)+H(I,J)*3.0
            IMPB(I)=A(I,J)+B(I,J)+C(I,J)+D(I,J)+E(I,J)+F(I,J)
     *              +G(I,J)+H(I,J)*3.0+IMPA(I)
   31     CONTINUE
          DO 30 I=1,10,N-1
            A(I,J) = A(I,J) + FLOAT(J)+1.0
            B(I,J) = B(I,J) + FLOAT(J)+2.0
            C(I,J) = C(I,J) + FLOAT(J)*3.0
            D(I,J) = D(I,J) + FLOAT(J)+1.0
            E(I,J) = E(I,J) + FLOAT(J)
            F(I,J) = F(I,J) + FLOAT(I)+1.0
            G(I,J) = G(I,J) + FLOAT(I)+2.0
            H(I,J) = H(I,J) + FLOAT(I)
            IMP1(I) = INT(A(I,J)+B(I,J)+C(I,J)+D(I,J)+E(I,J)+F(I,J)+
     *                    G(I,J)+H(I,J)+FLOAT(I)+FLOAT(J)*3.0+1.0)
            IMP2(I) = INT(A(I,J)+B(I,J)+C(I,J)+D(I,J)+E(I,J)+F(I,J)+
     *                    G(I,J)+H(I,J)+FLOAT(I)+FLOAT(J)*3.0+1.0)
     *                + IMPA(I)
   30     CONTINUE
          DO 40 J = 1,N
          DO 41 I = 1,N,2
            IMP1(I) = 1
   41       IMP2(I) = IMPA(I) + 2
          DO 40 I = 1,N,2
            A(I,J) = FLOAT(I)
            B(I,J) = FLOAT(I)
            C(I,J) = FLOAT(I)
            D(I,J) = FLOAT(I)
            E(I,J) = FLOAT(I)
            F(I,J) = FLOAT(I)
            G(I,J) = FLOAT(I)
            H(I,J) = FLOAT(I)
            IMPA(I) = A(I,J)+A(I,J)+B(I,J)+C(I,J)+D(I,J)+E(I,J)+
     *                F(I,J)+G(I,J)+H(I,J)*3.0+IMPB(I)
   40     CONTINUE
          DO 50 J= 5,7
          DO 51 I= N,10,3
   51       IMP3(I) = IMP3(I)+N
          DO 52 I=N,10,3
   52       A(I,J) = 0.0
          DO 53 I=N,10,3
   53       IMP2(I) = IMP2(I)+N+I
          DO 54 I=N,10,3
            A(I,J) = J
            B(I,J) = J
            C(I,J) = J
            D(I,J) = J
            E(I,J) = J
            F(I,J) = J
            G(I,J) = J
            H(I,J) = J
            IMPB(I) = A(I,J)+B(I,J)+C(I,J)+D(I,J)+E(I,J)+F(I,J)+G(I,J)+ 
     *                H(I,J)*3.0+IMPA(I)
   54     CONTINUE
   50     CONTINUE
          WRITE(6,*) IMP1,IMP2,IMP3,IMPA,IMPB,IMPC,A,B,C,D,E,F,G,H,N
          STOP
          END
