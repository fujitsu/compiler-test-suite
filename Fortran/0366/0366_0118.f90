	dimension b(1000)
	dimension x(1000)
	x = (/ (i,i=1,1000) /)
	do i=1,1000
	  b(i) = a(i,x)
	end do
	print *,b(10)
	contains
	  pure function a(n,b)
	  dimension b(1000)
	  intent(in)::n
	  intent(in)::b
	  a=sum(b(1:n))
	  end function
	end
