	implicit none
        integer*8 i
	integer*8 a(10)
        integer*8 b(10)
	data a/1,2,3,4,5,6,7,8,9,10/
	data b/10,9,8,7,6,5,4,3,1,0/
	do i=1,10
	a(i) = min(a(i) , b(i))
	end do
        print *,a
	end
