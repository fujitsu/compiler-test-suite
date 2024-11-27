	program main
	common /com/n1,n2,n3
	dimension a(100,100)
	data a/10000*1/
	k=1
	do i=1,100
	  do j=1,100
	    a(k,j) = a(k,j) + 1
	  end do
	  k=k+n1
	end do
	print *,sum(a)
	call sub(loc(a))
	end
	subroutine sub(b)
	common /com/n1,n2,n3
	dimension a(100,100)
	pointer(b,a)
	k=1
	do i=1,100
	  do j=1,100
	    a(k,j) = a(k,j) + 1
	  end do
	  k=k+n1
	end do
	print *,sum(a)
	end
	block data
	common /com/n1,n2,n3
	data n1/1/
	end
