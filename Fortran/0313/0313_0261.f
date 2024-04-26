	implicit none
        integer*8 i
	complex*8 c8a(10)
        complex*8 c8b(10)
	data c8a/1,2,3,4,5,6,7,8,9,10/
	data c8b/1,2,3,4,5,6,7,8,9,10/
	do i=1,10
	c8b(i) = c8a(i) * c8b(i)
	end do
        print *,c8b
	end
