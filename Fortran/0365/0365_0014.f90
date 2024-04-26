	dimension a(100,100),b(100,100)
	data a/10000*1.0/,b/10000*2.0/
	do i=1,99
	  do j=1,99
	    a(i,j) = a(i,j) + 1
	    if( j.eq.98 ) goto 1
	  end do
1         continue
	  do j=1,100
	    b(i,j) = b(i,j) + 1
	  enddo
	enddo
	print *,a(1,1),a(1,99),a(1,100),sum(a)
	print *,b(1,1),b(1,99),b(1,100),sum(b)
	end
           

