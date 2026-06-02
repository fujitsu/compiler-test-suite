      parameter(n=100)
      real*8 a(n),b(n)
      integer*8 c(n)
      volatile a,c

      do i=1,n
         b(i) = i
         c(i) = i
      enddo

      call sub(a,b,c,n)
      print *,a(1)
      print *,a(100)
      contains

      subroutine sub(a,b,c,n)
      real*8 a(n),b(n)
      integer*8 c(n)
      volatile a,c

      do i=1,n
         a(i) = b(c(i))
      enddo
      end subroutine
      end
