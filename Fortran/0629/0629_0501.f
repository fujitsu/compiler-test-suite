      REAL*8 a(100,100),b(100,100),c(100,100),d(100,100)
      REAL*8 e(10,10,10),f(10,10,10)
      a=0;b=1.0;c=0;d=2.0;e=0;f=3
      n=100
      call fuse(a,b,c,d,e,f,n)
      print *,'program do 10 & do 20'
      print *,a(1,1),a(10,10),a(50,50),a(80,80),a(100,100)
      print *,c(1,1),c(10,10),c(50,50),c(80,80),c(100,100)
      print *,e(1,1,1),e(3,3,3),e(5,5,5),e(8,8,8),e(10,10,10)
      stop
      end
      SUBROUTINE fuse(A,B,C,D,E,F,N)
      REAL*8 A(N,N),B(N,N),C(100,100),D(100,100)
      REAL*8 E(10,10,10),F(10,10,10),S1,S2
       DO 10 J=1,100
         A(J,1) = B(J,1)
 10      CONTINUE
      DO 20 I=1,100
       DO 20 J=1,100
         C(I,J) = D(I,J)
 20     CONTINUE
      DO 30 K=1,10
      DO 30 J=1,10
      DO 30 I=1,10
         E(I,J,K) = F(I,J,K)
 30     CONTINUE
      END
