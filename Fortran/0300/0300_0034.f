      subroutine sub(a,b,n)
      real * 8 a(n),b(n)
      integer * 4 s
      s = 3
      do i=1,n
        a(i) = b(i)**s
      enddo
      return
      end
      real * 8 a(1000),b(1000)
      a=1000
      b=1000 
      n=1000
      call sub(a,b,n)
      end

