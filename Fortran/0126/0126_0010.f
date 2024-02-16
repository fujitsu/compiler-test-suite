        module mod
        common/com/aa(16),cc(16)
        common/sbm_area/a(16),c(16)
        real*8 a,c,aa,cc
        end

	subroutine test_abs
	use mod
	implicit none
	integer i
        call mem2sbm(aa,a)
        call mem2sbm(aa(9),a(9))
	do i=1,16
	c(i) = abs(a(i))
	end do
        call sbm2mem(c,cc)
        call sbm2mem(c(9),cc(9))
	call dummy
	end

	subroutine test_umin
	use mod
	implicit none
	integer j
        call mem2sbm(aa,a)
        call mem2sbm(aa(9),a(9))
	do j=1,16
	c(j) = 0.0 - a(j)
	end do
        call sbm2mem(c,cc)
        call sbm2mem(c(9),cc(9))
	call dummy
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
        subroutine dummy
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
