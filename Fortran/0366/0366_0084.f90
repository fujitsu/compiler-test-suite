	subroutine sub1(j)
	dimension a(1000)
	do i=1,1000
	  a(i) = i
	  j=a(i)
	end do
	end
	subroutine sub2(j)
	dimension a(1000)
        dimension j(3)
	do i=1,1000
	  a(i) = i
	  j(1)=a(i)
	end do
	end
	subroutine sub3(j)
	dimension a(1000)
	do i=2,1000
	  a(i) = i
	  a(1)=a(i)
	end do
        j=a(1)
	end
	call sub1(i)
	print *,i
	call sub2(i)
	print *,i
	call sub3(i)
	print *,i
	end
