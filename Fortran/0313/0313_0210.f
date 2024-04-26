	implicit none
	common/com/i1
        real*4 r4(10)
        integer*8 i
	integer*1 i1(10)
        integer*8 i8(10)
	do i=1,10
	i8(i) = i1(i)
	r4(i) = 1.
	end do
        print *,i8
        do i=1,10
        if (1.0 /= r4(i)) then
          stop "NG"
        endif
        end do
	end
	block data
	common/com/i1
	integer*1 i1(10)
	data i1/1,2,3,4,5,-6,-7,-8,-9,-1/
	end
