      parameter(n=100)
      real*8 a(n),b(n)
      integer*8 c(n)
      volatile a,b

      do i=1,n
         a(i) = 6
         b(i) = i
         c(i) = i
      enddo

      call sub(a,b,c,n,50)
      print *,a(1)
      print *,a(100)
      contains

      subroutine sub(a,b,c,n,m)
      real*8 a(n),b(n)
      integer*8 c(n)
      volatile a,b

      do i=1,n
         if(i<m) then
            a(i) = b(c(i))
         endif
      enddo
      end subroutine
      end
