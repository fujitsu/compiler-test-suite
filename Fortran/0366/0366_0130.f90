	subroutine sub(r)
	common /com/a
	dimension a(10000)
	do i=1,10000
	  rr = a(i) + 1
	end do
	r=rr
	end
	common /com/a
	dimension a(10000)
	a(1:9999) = 0
	a(10000) = 3
	call sub(x)
	print *,x
	end

