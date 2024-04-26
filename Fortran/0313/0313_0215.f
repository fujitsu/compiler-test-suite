	implicit none
        real*4 r4(10)
        integer*8 i
	integer*4 i4(10)
        integer*1 i1(10)
	data i4/1,2,3,4,5,-6,-7,-8,-9,-1/
	do i=1,10
	i1(i) = i4(i) + 1_8
	r4(i) = 1.
	end do
        print *,i1
        do i=1,10
        if (1.0 /= r4(i)) then
          stop "NG"
        endif
        end do
	end
