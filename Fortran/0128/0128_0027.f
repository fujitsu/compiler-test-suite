      real, dimension(10) ::a
      real, dimension(10) ::r
      data a /2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0/
      call sub(r,10)
      do i=1,10
         if(r(i).ne.a(i))then
            print *,'ng'
         endif
      enddo
      print *,'ok'
      end
      
      subroutine sub ( r, m )
      integer, intent(in )                      :: m
      integer, dimension (1)                    :: l
      real,    dimension (m), intent(out)     :: r
      integer                                   :: s
      s=1
      l=1
      do i = 1, m, 1
         r(l) = s + 1
         s=s+1
         l=l+1
      end do
      return
      end

