	dimension a(100,100),b(100,100)
	data a/10000*1.0/,b/10000*2.0/
	do i=1,99
          j=1
1	  continue
	    a(i,j) = a(i+1,j+1) + 1
            j=j+1
	  if( j.le.99 ) goto 1
	  do j=1,99
	    b(i,j) = b(i,j) + 1
	  enddo
          j=1
2	  continue
	    if( j.gt.99 ) goto 3
	    a(i,j) = a(i+1,j+1) + 1
            j=j+1
	    goto 2
3         continue
	enddo
	print *,a(1,1),a(100,1),sum(a)
	print *,b(1,1),b(100,1),sum(b)
	end
           

