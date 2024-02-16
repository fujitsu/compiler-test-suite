	dimension a(1000)
	i=-1
	do concurrent (i=1:1000)
	a(i) = 1
	end do
	print *,i
	print *,a(1)
	end
