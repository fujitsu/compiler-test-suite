      dimension  a(10,20,30),b(10,20,30),c(10,20,30)
      data  a,b,c/6000*1.0,6000*2.0,6000*3.0/

      call  sub(a,b,c,10,20,30)
      stop
      end
      subroutine  sub(a,b,c,l,m,n)
      dimension  a(l,m,n),b(l,m,n),c(l,m,n)
      do 10 i=1,n
       do 10 j=1,m
        do 10 k=1,l
           a(k,j,i) = a(k,j,i) * b(k,j,i)
           c(k,j,i) = a(k,j,i) + c(k,j,i)
   10 continue

      print *,a,c
      return
      end