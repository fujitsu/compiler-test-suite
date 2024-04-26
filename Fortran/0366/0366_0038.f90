	subroutine test1(n,a)
	common/com/k
	dimension a(100,100)
	do i=1,n
	  do j=1,n
  	    if( k.eq. 0 ) goto  20
30      continue
  	  end do
	end do
	goto 10
20      continue
        a(i,j) = 2
        goto 30
10      continue
	print *,sum(a)
	end 
	dimension a(100,100)
	common/com/k
	k=0
	a=0
	n=100
	call test1(n,a)
	end
