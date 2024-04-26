	subroutine sub(n,l4,l8)
	implicit none
        integer*8 i,n
        real*4    r4(10)
	logical*4 l4(n)
        logical*8 l8(n)
	do i=1,n
	l4(i) = l8(i)
	r4(i) = 1.
	end do
        do i=1,10
        if (1.0 /= r4(i)) then
          stop "NG"
        endif
        end do
	end
	logical*4 l4(10)
        logical*8 l8(10)
	data l8/1,2,3,4,5,6,7,8,9,10/
	call sub(10_8,l4,l8)
        print *,l4
	end
