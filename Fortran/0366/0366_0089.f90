	subroutine sub(m)
	dimension a(m)
	common/com/n,k
	a(2:2000:2) = 1
	do i=1,2000,n
	  a(i) = a(i+k) + 1
	end do
	print *,sum(a(1:2000:2))
	end
	block data
	common/com/n,k
	data n/2/
	data k/1/
	end
	call sub(2000)
	end
