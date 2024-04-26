	subroutine sub(n,a,b)
	dimension a(n),b(n)
	do i=1,n
	  a(i) = b(i) + 1
	end do
	do i=1,n
	  a(i) = b(i) + 1
	end do
	end

	module moda
	contains
	subroutine inn(n,a,b)
	dimension a(n),b(n)
	do i=1,n
	  a(i) = b(i) + 1
	end do
	do i=1,n
	  a(i) = b(i) + 1
	end do
	end subroutine
	end module
	program test
	use moda
	dimension a(100),b(100)
        do i=1,100
          b(i) = real(i)
        enddo
	call sub(100,a,b)
	call inn(100,a,b)
        print *,'OK'
	end
