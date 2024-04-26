	dimension a(100,100),b(100,100)
	data a/10000*1.0/,b/10000*2.0/
	do i=1,99
	  do j=1,99
	    a(i,j) = a(i,j) + 1
	    if( j.eq.98 ) exit
	  end do
	  do j=1,100
	    if( mod(j,2) .eq. 0 ) cycle
	    b(i,j) = b(i,j) + 1
	  enddo
	enddo
	print *,a(1,1),a(1,100),a(1,99),sum(a)
	print *,b(1,1),b(1,100),b(1,99),sum(b)
	end
           

