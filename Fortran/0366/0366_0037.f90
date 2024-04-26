	subroutine test1(n)
	dimension a(100,100)
	a=0
	if( n .eq. 0 ) goto 10
30      continue
	do i=1,n
	  do j=1,n
  	    goto 20
10      continue
        n=n+1
	goto 30
20      continue
            a(i,j) = 2
  	  end do
	end do
	print *,sum(a)
	end 
	n=0
	call test1(n)
	end
