	implicit none
        real*4 r4(10)
        integer*8 i
	real*8    r8(10)
        integer*4 i4(10)
	data i4/1,2,3,4,5,6,7,8,9,10/
	do i=1,10
	r8(i) = i4(i)
	r4(i) = 1.
	end do
        print *,r8
        do i=1,10
        if (1.0 /= r4(i)) then
          stop "NG"
        endif
        end do
	end
