	subroutine sub(b,n)
	pointer(b,a)
	dimension a(10000)
	do i=1,n
	  a(i+1) = a(i) + 1
	end do
	end
	program main
	parameter(n=10000)
	dimension a(n)
        parameter( x1 = 12502500.0 )
	parameter( y1 = 37502500.0 )
        parameter( x2 = 12502500.0 )
	parameter( y2 = 37501328.0 )
	a=1
	call sub(loc(a),n-1)
	if( sum(a(1:n/2)) /= x1 .and. sum(a(1:n/2)) /= x2 ) then
           print *,"NG1"
        endif
        res = sum(a(n/2+1:n),mask=.TRUE.);
	if( res /= y1 .and. res /= y2 ) then
          print *,"NG2"
        endif
	print *,"PASS"
	end

