      parameter(n=100)
      real*8 a(n),b(n)
      volatile a,b

      do i=1,n
         a(i) = 4
         b(i) = i
      enddo

      call sub(a,b,n,50)
      print *,a(1)
      print *,a(100)
      contains

      subroutine sub(a,b,n,m)
      real*8 a(n),b(n)
      volatile a,b

      do i=1,n
         if(i<m) then
            a(i) = b(i)
         endif
      enddo
      end subroutine
      end
