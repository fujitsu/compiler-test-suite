	complex a(1000),b(1000),c,cfun
	real    r(1000)
	b=(/(i+0000,i=1,1000)/)
	r=(/(i+2000,i=1,1000)/)

	do i=1,1000
	  a(i) = cfun(b(i),r(i),i+1)
	end do
	print *,a(1:5),a(1000-5:1000)
	print *,b(1:5),b(1000-5:1000)
	print *,r(1:5),r(1000-5:1000)
	end
	recursive complex function cfun(b,r,i)
	complex b,c
	real    r
	if( mod(i,2) .eq. 0 ) then
	  cfun   = b
	  r      = b
	else
	  cfun   = r
	  b      = r
	endif
	end
