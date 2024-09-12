      dimension  a(10,10,10),b(10,10,10),c(10,10,10)
      data  a,b,c/1000*2.0,1000*2.0,1000*1.0/

      call  sub(a,b,c,10)
      stop
      end
      subroutine  sub(a,b,c,n)
      dimension  a(n,10,10),b(n,10,10),c(n,10,10)
      do 10 i=1,10
       do 10 j=1,n
        do 10 k=1,10
           a(j,i,k) = b(j,i,k) * a(j,i,k)
           c(j,i,k) = a(j,i,k) + c(j,i,k)
   10 continue

      print *,a,c
      return
      end
