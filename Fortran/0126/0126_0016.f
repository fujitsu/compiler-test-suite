	subroutine test_cmult()
	implicit none
        complex*16 a,b,c,d
        common/sbm_area/a(8),b(8),c(8),d(8)
	integer i
        do i = 1, 8
        d(i) = a(i) * b(i)
        end do
	call dummy
        end

	block data
	implicit none
	common/com/a(16)
	real*8 a
	data a/ 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16 /
	end 

	program main
	implicit none
        complex*16 x,a,b,c,d
	common/com/x(8)
        common/sbm_area/a(8),b(8),c(8),d(8)
	complex*16 res(8)
	data res(1:4)/ (-3,4),(-7,24),(-11,60),(-15,112)/
        data res(5:8)/ (-19,180),(-23,264),(-27,364),(-31,480) /
        integer*4 i
	do i=1,8,4
        call mem2sbm(x(i),a(i))
        call mem2sbm(x(i),b(i))
        call mem2sbm(x(i),c(i))
        end do
        call test_cmult()
	do i=1,8,4
        call sbm2mem(d(i),x(i))
        end do
	do i=1,8
          if( x(i) .ne. res(i) ) then
            print *,'NG=',x(i),'OK=',res(i)
	  endif
	end do
	print *,'PASS'
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

	subroutine dummy
	end

