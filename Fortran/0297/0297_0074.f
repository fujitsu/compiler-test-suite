      parameter(n=10)
      real  a(n),b(n)
      a=1.
      b=2.
      do i=1,n
        call sub(a(i),b(i),10,2.0)
      enddo
      write(6,99) b
 99   format(5f10.5)
      stop
      end
      subroutine sub(a,b,n,z)
      real  a,b,z
      b= a+b+z
      return
      end

