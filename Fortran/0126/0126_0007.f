	subroutine test_add
	implicit none
	common/com/a(16),b(16),c(16)
	real*8 a,b,c
	integer i
	do i=1,16
	c(i) = a(i) + b(i)
	end do
	end

	subroutine test_sub
	implicit none
	common/com/a(16),b(16),c(16)
	real*8 a,b,c
	integer j
	do j=1,16
	c(j) = a(j) - b(j)
	end do
	end

	subroutine test_mult
	implicit none
	common/com/a(16),b(16),c(16)
	real*8 a,b,c
	integer k
	do k=1,16
	c(k) = a(k) * b(k)
	end do
	end

	subroutine test_div
	implicit none
	common/com/a(16),b(16),c(16)
	real*8 a,b,c
	integer i
	do i=1,16
	c(i) = a(i) / b(i) 
	end do
	end

	block data
	implicit none
	common/com/a(16),b(16),c(16)
	real*8 a,b,c
	data a/ 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16 /
	data b/ 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16 /
	end 

	program main
	implicit none
	common/com/a(16),b(16),c(16)
	real*8 a,b,c
	call test_add
	if( c(1) /= 2.0 ) then
	  print *," - 01 NG ", c(1)
	endif
	if( c(16) /= 32.0 ) then
	  print *," - 02 NG ", c(16)
	endif
	call test_sub
	if( c(1) /= 0.0 ) then
	  print *," - 03 NG ", c(1)
	endif
	if( c(16) /= 0.0 ) then
	  print *," - 04 NG ", c(16)
	endif
	call test_mult
	if( c(1) /= 1.0 ) then
	  print *," - 05 NG ", c(1)
	endif
	if( c(16) /= (16.*16.) ) then
	  print *," - 06 NG ", c(16)
	endif
	call test_div
	if( c(1) /= 1.0 ) then
	  print *," - 07 NG ", c(1)
	endif
	if( c(16) /= 1.0 ) then
	  print *," - 08 NG ", c(16)
	endif
	print *,"PASS"
	end
