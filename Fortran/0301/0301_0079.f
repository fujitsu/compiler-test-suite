      parameter(n=100)
      real*8 a(n),b(n)
      integer*8 c(n),d(n)
      volatile a,b,c,d

      do i=1,n
         b(i) = i
         c(i) = i
         d(i) = i
      enddo

      call sub(a,b,c,d,n)
      print *,a(1)
      print *,a(100)
      contains

      subroutine sub(a,b,c,d,n)
      real*8 a(n),b(n)
      integer*8 c(n),d(n)
      volatile a,b,c,d

      do i=1,n
         a(i) = b(c(d(i)))
      enddo
      end subroutine
      end
