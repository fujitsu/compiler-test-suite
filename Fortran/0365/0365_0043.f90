      subroutine sub(A,B,C,N)
      real           A(N),B(N),C(N)
      a=1
      b=1
      c=1
      end
      parameter(  n = 100 )
      real           A(N),B(N),C(N)
      a=2
      b=2
      c=2
      call sub(a,b,c,n)
      print *,a(1),b(1),c(n)
      end
