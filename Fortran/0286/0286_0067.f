	subroutine sub(r41,r42,dp)
	implicit none
	external dp
	real*4 r41,r42
	real*8 dp
	if( dprod(r41,r42) .ne. dp(r41,r42) ) print *," NG "
	end
!
	program main
	implicit none
	intrinsic dprod
	real*4 r41,r42
	integer i,j
	do i=-100,100,1
	do j=-100,100,1
	r41  = i/10.0
	r42  = j/10.0
	call sub(r41,r42,dprod)
	enddo
	enddo
	print *,"PASS"
	end
