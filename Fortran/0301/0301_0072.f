      parameter(n=100)
      real*8 a(n),b(n)
      volatile a,b

      do i=1,n
         b(i) = i
      enddo

      call sub(a,b,n)
      print *,a(1)
      print *,a(100)
      contains

      subroutine sub(a,b,n)
      real*8 a(n),b(n)
      volatile a,b

      do i=1,n
         a(i) = b(i)
      enddo

      end subroutine
      end
