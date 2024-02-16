	module mod
	common/com/aa(16),bb(16),cc(16)
	common/sbm_area/a(16),b(16),c(16)
	real*8 a,b,c,aa,bb,cc
	end
	subroutine test_add
	use mod
	implicit none
	integer i
        call mem2sbm(aa,a)
        call mem2sbm(aa(9),a(9))
        call mem2sbm(bb,b)
        call mem2sbm(bb(9),b(9))
        call chk_trace_start(1)
	do i=1,16
	c(i) = a(i) + b(i)
	end do
        call chk_trace_end(1)
        call sbm2mem(c,cc)
        call sbm2mem(c(9),cc(9))
        call dummy(1)    
	end

	subroutine test_sub
	use mod
	implicit none
	integer j
        call mem2sbm(aa,a)
        call mem2sbm(aa(9),a(9))
        call mem2sbm(bb,b)
        call mem2sbm(bb(9),b(9))
        call chk_trace_start(2)
	do j=1,16
	c(j) = a(j) - b(j) 
	end do
        call chk_trace_end(2)
        call sbm2mem(c,cc)
        call sbm2mem(c(9),cc(9))
        call dummy(1)     
	end

	subroutine test_mult
	use mod
	implicit none
	integer k
        call mem2sbm(aa,a)
        call mem2sbm(aa(9),a(9))
        call mem2sbm(bb,b)
        call mem2sbm(bb(9),b(9))
        call chk_trace_start(3)
	do k=1,16
	c(k) = a(k) * b(k)
	end do
        call chk_trace_end(3)
        call sbm2mem(c,cc)
        call sbm2mem(c(9),cc(9))
        call dummy(1)       
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
	print *," PASS"
	end
        subroutine dummy(i)
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
	subroutine chk_trace_start(i)
	implicit none
	integer,intent(in)::i
        if( i .eq. 0 ) stop
	end
	subroutine chk_trace_end(i)
	implicit none
	integer,intent(in)::i
        if( i .eq. 0 ) stop
	end
