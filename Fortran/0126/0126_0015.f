	subroutine test(n)
	implicit none
	common/com/a(16),b(16),c(16)
	real*8 a,b,c
	integer i,n,k
	do k=1,n
	do i=1,16
	a(i) = a(i) + b(i) * c(i)
	end do
	end do
	end

	block data
	implicit none
	common/com/a(16),b(16),c(16)
	real*8 a,b,c
	data b/ 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16 /
	data c/ 16*2 /
	end 

	program main
	implicit none
	common/com/a(16),b(16),c(16)
	real*8 a,b,c
	call test(16)
	if( a(1) /= 32.0 ) then
	  print *,"NG ", a(1)
	endif
	if( a(16) /= 512.0 ) then
	  print *,"NG ", a(16)
	endif
	print *,"PASS"
	end
