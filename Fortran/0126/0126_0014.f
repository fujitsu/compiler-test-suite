	function test_sum()
	implicit none
        common/com/aa(16)
        common/sbm_area/a(16)
	real*8 a,aa,s,test_sum
	integer i
        call mem2sbm(aa,a)
        call mem2sbm(aa(9),a(9))
	s = 0
	do i=1,16
	s = s + a(i)
	end do
        test_sum = s
	call dummy
	end

	block data
	implicit none
	common/com/a(16)
	real*8 a,c
	data a/ 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16 /
	end 

	program main
	implicit none
	common/com/a(16)
	real*8 a,s,test_sum
	s = test_sum()
	if( s /= 136.0 ) then
	  print *,"- 01 NG ", s
	endif
	print *,"PASS"
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

