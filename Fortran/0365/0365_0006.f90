	dimension a(10,10,100),b(10,10,100)
	data a/10000*1.0/,b/10000*2.0/
	do k=1,10
	  do i=1,10
	    do j=1,99
	      a(k,i,j) = a(k,i,j) + 1
	      if( j.eq.98 ) exit
	    end do
	    do j=1,100
	      if( mod(j,2) .eq. 0 ) cycle
	      b(k,i,j) = b(k,i,j) + 1
	    enddo
	  enddo
 	  call dummy
	enddo
	print *,a(1,1,1),a(1,1,99),a(1,1,100),sum(a)
	print *,b(1,1,1),b(1,1,99),b(1,1,100),sum(b)
	end
	subroutine dummy
	end
           

