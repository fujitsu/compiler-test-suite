      subroutine sub()
      common/com/a,b
      real*8  a(16),b(16),x
      do i=1,16
         x = 0
         if( a(i) .gt. 10 ) then
            x = 1
         endif
         b(i) = x
      enddo
      end
      common/com/a,b
      real*8  a(16),b(16) 
      real*8  ans(16)
      do i=1,16
        a(i) = i
        ans(i) = merge(1, 0, i .gt. 10)
      end do
      call sub
      if (all(ans==b)) then
        print *,"OK"
      else
        print *,b
        print *,ans
      endif
      end
