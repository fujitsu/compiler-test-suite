	subroutine test_conjsub()
	implicit none
        complex*16 a,b,c,d
        common/sbm_area/a(16),b(16),c(16),d(16)
	integer i
        do i = 1, 8
        d(i) = c(i) - a(i) * CONJG(b(i))
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
	common/com/x(16)
        common/sbm_area/a(16),b(16),c(16),d(16)
        complex*16 res(8)
	data res(1:4)/ (-4.,2.),(-22.,4.),(-56.,6.),(-106.,8.)/
        data res(5:8)/ (-172.,10.),(-254.,12.),(-352.,14.),(-466.,16.) /
        integer*4 i
	do i=1,16,4
        call mem2sbm(x(i),a(i))
        call mem2sbm(x(i),b(i))
        call mem2sbm(x(i),c(i))
        end do
        call test_conjsub()
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

