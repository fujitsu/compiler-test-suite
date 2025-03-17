      real,target :: a(5:10)
      real,pointer :: p1(:), p2(:)
      a=7
      do i=5,10
      a(i)=i
      end do
      p1 => a
      p2 => a(:)
      print *,p1
      print *,p2
      call sub(a,a(:))
      contains
	subroutine sub(x,y)
	real,intent(in) :: x(:),y(:)
	print *,x
	print *,y
	return
	end subroutine
      end
