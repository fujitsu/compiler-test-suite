      real U(20,20),V(20,20),a(20,20)
      
      N=10
      M=10
      do 10 n1=1,20
      do 10 m1=1,20
      u(m1,n1) = m1
      v(m1,n1) = n1
      a(m1,n1) = n1
10    continue

      DO 71 J=1,10
      DO 72 K=1,10
      DO 73 I=1,10
      U(K,J) = a(m,n)
   73 CONTINUE
   72 CONTINUE
   71 CONTINUE

      DO 80 J=1,10
      DO 80 K=1,10
      V(K,J) = a(m,n)+1
   80 CONTINUE
c
      do 20 n=1,20
      do 20 m=1,20
      print *,u(m,n)
      print *,v(m,n)
20    continue
      stop
      end
