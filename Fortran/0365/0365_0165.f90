	program main
	common/com/a(1000)
	do i=1,1000
	  call inn1(i+0)
	end do
	do i=1,1000
	  call inn2(i+0)
	end do
	do i=1,1000
	  call inn3(i+0,a)
	end do
	s=0
	do i=1,1000
	  call inn4(i+0,a,s)
	end do
	print *,a(1),a(1000),s
	contains

	  recursive subroutine inn1(i)
	  intent(in) :: i
	  a(i) = 1
	  end subroutine 

	  recursive subroutine inn2(i)
	  intent(in) :: i
	  common/com/a(1000)
	  a(i) = a(i) + 1
	  end subroutine

	  recursive subroutine inn3(i,a)
	  intent(in) :: i
	  intent(inout) :: a
	  dimension a(1000)
	  a(i) = a(i) + 1
	  end subroutine

	  recursive subroutine inn4(i,a,s)
	  intent(in) :: i
	  intent(in) :: a
	  intent(inout) :: s
	  dimension a(1000)
	  s=s+a(i)
	  end subroutine
	end
