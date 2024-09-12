	subroutine mandel_1(z,c,f)
	complex z(2048,2048)
	complex c(2048,2048)
	integer	f(2048,2048)
	complex	zz

	do 300 iy = 1, 2048
		do 200 ix = 1, 2048
					zz = z(ix,iy)
					if ( cabs(zz) .gt. 2.0 ) then
						f(ix,iy) = ix+iy
					end if
 200		continue
 300			continue
 100	continue
	return
	end
	complex z(2048,2048)
	complex c(2048,2048)
	integer	f(2048,2048)

	z=cmplx(1.0,2.0)
	call mandel_1(z,c,f)
	print*,(f(i,i+3),i=1,2048,100)
	end
