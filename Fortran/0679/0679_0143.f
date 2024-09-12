      dimension  a(15,20,30),b(15,20,30),c(15,20,30)
      data  a,b,c/9000*1.0,9000*2.0,9000*3.0/

      l = 15
      m = 20
      n = 30
      call  sub(a,b,c,l,m,n)
      stop
      end

      subroutine  sub(a,b,c,l,m,n)
      dimension  a(l,m,n),b(l,m,n),c(l,m,n)
      n = 5
      m = 10
      l = 15
      do 10 i=1,n
       do 10 j=1,m
        do 10 k=1,l
           a(k,j,i) = a(k,j,i) * b(k,j,i)
           c(k,j,i) = a(k,j,i) + c(k,j,i)
   10 continue

      print *,a(1,1,1),a(5,10,15),c(15,20,30)
      return
      end
