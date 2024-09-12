      dimension a(10,10),b(10,10),c(10,10)
      data a,b,c/100*1.0,100*2.0,100*3.0/
      call sub(a,b,c,10)
      stop
      end

      subroutine sub(a,b,c,n)
      dimension a(n,n),b(n,n),c(n,n)

      do 10 j=1,n
        do 10 i=1,n
          a(i,j) = a(i,j) + b(i,j) + c(i,j)
   10 continue

      print *,a
      return
      end
