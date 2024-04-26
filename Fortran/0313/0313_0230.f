	subroutine sub(n,l4,l8)
	implicit none
        integer*8 i,n
	logical*4 l4(n)
        logical*8 l8(n)
	do i=1,n
	l4(i) = l8(i)
	end do
	end
	logical*4 l4(10)
        logical*8 l8(10)
	data l8/1,2,3,4,5,6,7,8,9,10/
	call sub(10_8,l4,l8)
        print *,l4
	end
