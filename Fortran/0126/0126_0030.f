	module mod
	common/com/ss(8192-16)
	common/sbm_area/s(8192-16)
	real*8 s,ss
	end
	subroutine test
	use mod
	implicit none
	integer i
	real*8 sum
	sum = 0
        call mem2sbm(ss,s)
        call mem2sbm(ss(9),s(9))
	do i=1,16
	sum = sum + s(i)
	end do
        print *,sum
	end

	block data
	implicit none
	common/com/ss(8192-16)
	real*8 ss
	data ss/ 8176 * 1. /
	end 

	program main
	implicit none
        call test	
	end

	subroutine sbm2mem(from,to)
	implicit none
	real*8 from(8),to(8) 
	to = from
	end
	subroutine mem2sbm(from,to)
	implicit none
	real*8 from(8),to(8)
	to = from
	end
