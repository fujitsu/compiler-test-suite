	implicit none
        integer*8 i
        real*4    r4(10)
	real*8    r8(10)
        integer*8 i8(10)
	data i8/1,2,3,4,5,6,7,8,9,10/
	do i=1,10
	r8(i) = i8(i)
	r4(i) = 1.0
	end do
        print *,r8
        do i=1,10
        if (1.0 /= r4(i)) then
          stop "NG"
        endif
        end do
	end
