      integer x(100000)
      common/com/n
      x=0
      do i=1,100,n
        x(i) = 1
        n=n+1
      end do
      call sub(x)
      end
      subroutine sub(x)
      integer x(100000),s
      s=0
      do i=1,100
	s=s+x(i)
      end do
      if( s.eq.100 ) then
	print *,' OK '
      else 
	print *,' NG '
      endif
      end
      block data
      common/com/n
      data n/1/
      end 
