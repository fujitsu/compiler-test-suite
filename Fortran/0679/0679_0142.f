      dimension  a(10,20,30),b(10,20,30),c(10,20,30)
      data  a,b,c/6000*1.0,6000*2.0,6000*3.0/

      l = 10
      m = 20
      n = 30
      call  sub(a,b,c,l,m,n)
      stop
      end

      subroutine  sub(a,b,c,l,m,n)
      dimension  a(n,l,m),b(n,l,m),c(n,l,m)
      n = 15
      m = 10
      l = 5
      do 10 i=1,n
       do 10 j=1,m
        do 10 k=1,l
           a(i,k,j) = b(i,k,j) * a(i,k,j)
           c(i,k,j) = a(i,k,j) + c(i,k,j)
   10 continue

      print *,a,c
      return
      end
