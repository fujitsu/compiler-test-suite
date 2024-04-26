	dimension a(100,100),b(100,100)
	data a/10000*1.0/,b/10000*2.0/
	do i=1,99
	  do j=1,100 
	    a(i,j) = a(i,j) + 1
	  enddo
	  do j=1,100 
	    b(i,j) = b(i+1,j) + 1
	  enddo
	enddo
	print *,a(1,1),a(100,1),sum(a)
	print *,b(1,1),b(100,1),sum(b)
	end
           

