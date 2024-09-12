      DIMENSION A(2048,11),B(2048,11),C(2048,11),D(2048,11)
      REAL*8    E(2048,11),F(2048,11),G(2048,11),H(2048,11)
      COMMON /BLK/NN

      DO 99 J=1,11
      DO 99 I=1,2048
        A(I,J)=1.0
        B(I,J)=2.0
        C(I,J)=3.0
        D(I,J)=4.0
        E(I,J)=5.0
        F(I,J)=6.0
        G(I,J)=7.0
        H(I,J)=8.0
99    CONTINUE

      DO 10 J=1,10
        DO 20 I=1,10
          A(I,1)=B(I,1)+C(I,1)
          D(I,1)=B(I,1)+C(I,1)+D(I,1)+E(I,J)
  20    CONTINUE

      DO 30 L=1,10
        DO 40 I=20,30
          G(I,1)=H(I,2)+F(I,L)
  40    CONTINUE
 30   CONTINUE
 10   CONTINUE

        DO 100 J=1,10
          DO 200 I=1,10
            A(I,2)=B(3,I)+C(I,J)
200       CONTINUE

          DO  300 I=1,800
             D(I,1)=B(I,1)+C(I,1)+F(I,J)
300       CONTINUE

          DO 400 I= 1 , 10
          H(I,5)=G(I,J)
400       CONTINUE
100       CONTINUE

        DO 5000 J=1,10
          DO 4000 I=1,2048
            A(I,2)=B(I,3)+C(I,J)*2.0-((C(I,1)*1.0-F(I,1))/2.0+C(I,2))
4000       CONTINUE

          DO  6000 I=1,2048
             D(I,5)=(B(I,1)+C(I,4))+F(I,J)+C(I,7)
     *                           +F(I,1)+G(I,4)*2.0+1+2.0-(B(I,4)/1.0)
6000       CONTINUE

          DO 7000 I= 1 ,2048
          H(I,3)=G(I,J)+B(I,5)+C(I,7)
7000       CONTINUE
5000       CONTINUE

       WRITE(6,*) (A(1,I),I=1,11)
       WRITE(6,*) (B(1,I),I=1,11)
       WRITE(6,*) (C(1,I),I=1,11)
       WRITE(6,*) (D(1,I),I=1,11)
       WRITE(6,*) (E(1,I),I=1,11)
       WRITE(6,*) (F(1,I),I=1,11)
       WRITE(6,*) (G(1,I),I=1,11)
       WRITE(6,*) (H(1,I),I=1,11)
       STOP
       END
       BLOCK DATA
       COMMON /BLK/N
       DATA N/10/
       END
