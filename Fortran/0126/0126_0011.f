	subroutine test_madd
	implicit none
	common/com/a(16),b(16),c(16),d(16)
	real*8 a,b,c,d
	integer i
	do i=1,16
	a(i) = b(i) * c(i) + d(i)
	end do
	end

	subroutine test_msub
	implicit none
	common/com/a(16),b(16),c(16),d(16)
	real*8 a,b,c,d
	integer j
	do j=1,16
	a(j) = b(j) * c(j) - d(j)
	end do
	end

	subroutine test_nmadd
	implicit none
	common/com/a(16),b(16),c(16),d(16)
	real*8 a,b,c,d
	integer k
	do k=1,16
	a(k) = - (b(k) * c(k) + d(k))
	end do
	end

	subroutine test_nmsub
	implicit none
	common/com/a(16),b(16),c(16),d(16)
	real*8 a,b,c,d
	integer l
	do l=1,16
	a(l) = d(l) - b(l) * c(l)
	end do
	end

	block data
	implicit none
	common/com/a(16),b(16),c(16),d(16)
	real*8 a,b,c,d
	data b/ 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16 /
	data c/ 16*2 /
	data d/ 16*1 /
	end 

	program main
	implicit none
	common/com/a(16),b(16),c(16),d(16)
	real*8 a,b,c,d
	call test_madd
	if( a(1) /= 3.0 ) then
	  print *,"- 03 NG ", a(1)
	endif
	if( a(16) /= 33.0 ) then
	  print *,"- 02 NG ", a(16)
	endif
	call test_msub
	if( a(1) /= 1.0 ) then
	  print *,"- 03 NG ", a(1)
	endif
	if( a(16) /= 31.0 ) then
	  print *,"- 04 NG ", a(16)
	endif
	call test_nmadd
	if( a(1) /= -3.0 ) then
	  print *,"- 05 NG ", a(1)
	endif
	if( a(16) /= -33.0 ) then
	  print *,"- 06 NG ", a(16)
	endif
	call test_nmsub
	if( a(1) /= -1.0 ) then
	  print *,"- 07 NG ", a(1)
	endif
	if( a(16) /= -31.0 ) then
	  print *,"- 08 NG ", a(16)
	endif
	print *,"PASS"
	end
