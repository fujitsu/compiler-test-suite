      dimension  a(5,10,100),b(5,10,100),c(5,10,100)
      data  a,b,c/5000*3.0,5000*2.0,5000*1.0/

      n = 100
      call  sub(a,b,c,5,10,n)
      stop
      end
      subroutine  sub(a,b,c,l,m,n)
      dimension  a(l,m,n),b(l,m,n),c(l,m,n)
      n = 10
      do 10 i=1,n
       do 10 j=1,m
        do 10 k=1,l
           a(k,j,i) = b(k,j,i) * a(k,j,i)
           c(k,j,i) = a(k,j,i) + c(k,j,i)
   10 continue

      print *,a,c
      return
      end
