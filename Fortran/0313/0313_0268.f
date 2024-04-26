	implicit none
        integer*8 i
	real*4 aa(10)
        real*4 bb(10)
	data aa/-4,-3,-2,-1,   0, 1,2,3,4,5/
	data bb/-1, 0, 1, 2,-0.0,-2,-1,0,1,2/
	do i=1,10
	bb(i) = sign(aa(i),bb(i))
	end do
        print *,bb
	end
