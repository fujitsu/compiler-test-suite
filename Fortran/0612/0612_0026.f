	program test
	integer i,j
	integer pass/0/
	real*8 test_data(0:9)
	real*8 zero /0.0/
	real*8 one  /1.0/
        real*8 DBL_MAX/1.7976931348623157D+308/
        real*8 DBL_MIN/2.2250738585072014D-308/
	real*8 snan
        snan = z'7ff0000000000001'
	test_data(0) = (snan)
	test_data(1) = (zero/zero)
	test_data(2) = (-DBL_MAX*10.0)
	test_data(3) = ( DBL_MAX*10.0)
	test_data(4) = (-DBL_MIN/10.0)
	test_data(5) = (DBL_MIN/10.0)
	test_data(6) = (-zero)
	test_data(7) = ( zero)
	test_data(8) = (-1.0)
	test_data(9) = (1.0)

	do i=0,9
	  do j=0,9
	    if( test_data(i) .eq. test_data(j) )then
	      print *,"(",i,",",j,")"
	      pass=pass+1
	    endif
	  end do
	end do
	if( pass .eq. 10 ) then
	  print *,"pass (",pass,")"
	else
	  print *,"NG   (",pass,")"
	endif
	end
