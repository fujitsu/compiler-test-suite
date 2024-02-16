        module mod
        common/com/aa(8),bb(8),cc(8)
        common/sbm_area/a(8),b(8),c(8)
        complex*16 a,b,c,aa,bb,cc
        end

	subroutine test_add
	use mod
	implicit none
	integer i
        call mem2sbm(aa,a)
        call mem2sbm(aa(5),a(5))
        call mem2sbm(bb,b)
        call mem2sbm(bb(5),b(5))
        call chk_trace_start(1)
	do i=1,8
	c(i) = a(i) + b(i)
	end do
        call chk_trace_end(1)
        call sbm2mem(c,cc)
        call sbm2mem(c(5),cc(5))
        call dummy(1)
	end

	subroutine test_sub
	use mod
	implicit none
	integer j
        call mem2sbm(aa,a)
        call mem2sbm(aa(5),a(5))
        call mem2sbm(bb,b)
        call mem2sbm(bb(5),b(5))
        call chk_trace_start(2)
	do j=1,8
	c(j) = a(j) - b(j)
	end do
        call chk_trace_end(2)
        call sbm2mem(c,cc)
        call sbm2mem(c(5),cc(5))
        call dummy(1)
	end

	subroutine test_mult
	use mod
	implicit none
	integer k
        call mem2sbm(aa,a)
        call mem2sbm(aa(5),a(5))
        call mem2sbm(bb,b)
        call mem2sbm(bb(5),b(5))
        call chk_trace_start(3)
	do k=1,8
	c(k) = a(k) * b(k)
	end do
        call chk_trace_end(3)
        call sbm2mem(c,cc)
        call sbm2mem(c(5),cc(5))
        call dummy(1)
	end

	subroutine test_div
	use mod
	implicit none
	integer i
	do i=1,8
	cc(i) = aa(i) / bb(i)
	end do
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
	common/com/a(8),b(8),c(8)
	complex*16 a,b,c
	call test_add
	if( c(1) /= (2.0,4.0) ) then
	  print *,"- 01 NG ", c(1)
	endif
	if( c(8) /= (30.0,32.0) ) then
	  print *,"- 02 NG ", c(8)
	endif
	call test_sub
	if( c(1) /= 0.0 ) then
	  print *,"- 03 NG ", c(1)
	endif
	if( c(8) /= 0.0 ) then
	  print *,"- 04 NG ", c(8)
	endif
	call test_mult
	if( c(1) /= (-3.0,4.0) ) then
	  print *,"- 05 NG ", c(1)
	endif
	if( c(8) /= (-31.0,480.0) ) then
	  print *,"- 06 NG ", c(8)
	endif
	call test_div
	if( c(1) /= 1.0 ) then
	  print *,"- 07 NG ", c(1)
	endif
	if( c(8) /= 1.0 ) then
	  print *,"- 08 NG ", c(8)
	endif
	print *,"PASS"
	end
        subroutine dummy(i)
        end

        subroutine sbm2mem(from,to)
        implicit none
        complex*16 from(4),to(4)
        to = from
        end
        subroutine mem2sbm(from,to)
        implicit none
        complex*16 from(4),to(4)
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

