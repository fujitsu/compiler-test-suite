	function test_sum()
	implicit none
	common/com/a(16)
	real*8 a,s,test_sum
	integer i
	s = 0
	do i=1,16
	s = s + a(i)
	end do
        test_sum = s
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
