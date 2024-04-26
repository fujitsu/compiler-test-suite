	common/com/n
	dimension a(2000)
	a(1001:) = 2
	do i=1,1000
	  a(i) = a(i+n) + 1
	end do
	print *,sum(a(1:1000))
	end
	block data
	common/com/n
	data n/1000/
	end
