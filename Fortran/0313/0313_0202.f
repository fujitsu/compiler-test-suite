	implicit none
        integer*8 i,n
	complex*8 c4(10)
        complex*8 cx4(10)/10*0/
	data c4/1,2,3,4,5,6,7,8,9,10/
	n = sin(0.0) + 4;
	do i=1,n
	cx4(i) = c4(i) + cx4(i)
	end do
        print *,cx4
	end
