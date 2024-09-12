      dimension a(11),b(11),c(11)
      data n/10/
      do 10 i=1,11
        a(i)=1.0
        b(i)=4.0
        c(i)=1.0
 10   continue
      call sub(n,a,b,c)
      write(6,*) a
      stop
      end
      subroutine sub(n,a,b,c)
      dimension a(n),b(n),c(n)
      do 10 i=2,n-1
        c(i) = c(i-1) + a(i+1)
        a(i) = sqrt(b(i)) + c(i)
        a(i) = a(i-1) + c(i)
  10  continue
      write(6,*) ' i = ',i
      return
      end
