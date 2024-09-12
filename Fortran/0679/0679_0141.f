      dimension a(10,20),b(10,20),c(10,20)
      data a,b,c/200*1.0,200*2.0,200*3.0/
      n = 10
      m = 20
      call sub(a,b,c,n,m)
      stop
      end

      subroutine sub(a,b,c,n,m)
      dimension a(n,m),b(n,m),c(n,m)

      n = 5
      m = 10
      do 10 j=1,n
        do 10 i=1,m
          a(j,i) = a(j,i) + b(j,i) + c(j,i)
   10 continue

      print *,a
      return
      end
