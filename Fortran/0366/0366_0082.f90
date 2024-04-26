	common /com/a(1000)
	do i=1,1000
	  a(i) = 0
	  call sub1(i-1)
  	  call sub2(i+1)
	end do
	print *,a(100)
	end
	subroutine sub1(i)
	common /com/b(0:999)
	b(i) = b(i) + 1
	end
	subroutine sub2(i)
	common /com/a(2:1001)
	a(i) = a(i) + 1
	end
