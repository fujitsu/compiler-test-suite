      dimension a(10),b(10),c(10)
      data n/10/,x/4.0/
      do 10 i=1,n
        a(i)=1.0
        b(i)=4.0
        c(i)=1.0
 10   continue
      call sub(n,a,b,c,x)
      write(6,*) a
      write(6,*) c
      stop
      end
      subroutine sub(n,a,b,c,x)
      dimension a(n),b(n),c(n)
      do 10 i=2,n
        s = a(i) + sqrt(b(i))
        a(i) = a(i-1) + x
        c(i) = a(i) + s
  10  continue
      write(6,*) ' i = ',i
      return
      end
