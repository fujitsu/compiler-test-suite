        module mod
        common/com/aa(16),bb(16),cc(16),dd(16)
        common/sbm_area/a(16),b(16),c(16),d(16)
        real*8 a,b,c,d,aa,bb,cc,dd
	contains
	subroutine copy_in
        call mem2sbm(bb,b)
        call mem2sbm(bb(9),b(9))
        call mem2sbm(cc,c)
        call mem2sbm(cc(9),c(9))
        call mem2sbm(dd,d)
        call mem2sbm(dd(9),d(9))
        call dummy(1)
	end subroutine
	subroutine copy_back
        call sbm2mem(a,aa)
        call sbm2mem(a(9),aa(9))
        call dummy(1)
	end subroutine
        end

	subroutine test_madd
	use mod
	implicit none
	integer i
	call copy_in
	do i=1,16
	a(i) = b(i) * c(i) + d(i)
	end do
	call copy_back
	end

	subroutine test_msub
	use mod
	implicit none
	integer j
	call copy_in
	do j=1,16
	a(j) = b(j) * c(j) - d(j)
	end do
	call copy_back
	end

	subroutine test_nmadd
	use mod
	implicit none
	integer k
	call copy_in
	do k=1,16
	a(k) = - (b(k) * c(k) + d(k))
	end do
	call copy_back
	end

	subroutine test_nmsub
	use mod
	implicit none
	integer l
	call copy_in
	do l=1,16
	a(l) = d(l) - b(l) * c(l)
	end do
	call copy_back
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

