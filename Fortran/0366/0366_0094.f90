	complex a(1000),b(1000),c,cfun
	real    r(1000)
	b=(/(i+0000,i=1,1000)/)
	r=(/(i+2000,i=1,1000)/)

	do i=1,1000
	  c=b(i)
	  a(i) = cfun(c,r(i),i+1)
  	  if( mod(i+1,2) .eq. 0 ) then
	    r(i)      = c
	  else
	    c      = r(i)
	  endif
	  b(i) = c
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
	else
	  cfun   = r
	endif
	end
