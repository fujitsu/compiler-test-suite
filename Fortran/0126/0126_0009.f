	subroutine test_abs
	implicit none
	common/com/a(16),c(16)
	real*8 a,c
	integer i
	do i=1,16
	c(i) = abs(a(i))
	end do
	end

	subroutine test_umin
	implicit none
	common/com/a(16),c(16)
	real*8 a,c
	integer j
	do j=1,16
	c(j) = 0.0 - a(j) 
	end do
	end

	block data
	implicit none
	common/com/a(16),c(16)
	real*8 a,c
	data a/ -1,-2,-3,-4,-5,-6,-7,-8,-9,-10,-11,-12,-13,-14,-15,-16 /
	end 

	program main
	implicit none
	common/com/a(16),c(16)
	real*8 a,c
	call test_abs
	if( c(1) /= 1.0 ) then
	  print *," - 02 NG ", c(1)
	endif
	if( c(16) /= 16.0 ) then
	  print *," - 02 NG ", c(16)
	endif
	call test_umin
	if( c(1) /= 1.0 ) then
	  print *," - 03 NG ", c(1)
	endif
	if( c(16) /= 16.0 ) then
	  print *," - 04 NG ", c(16)
	endif
	print *," PASS"
	end
