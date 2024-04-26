	program main
	dimension a(1000)
	logical   m(1000)
	call init(a,m)
	do i=1,1000
	  if( m(i) ) x = a(i)
	end do
	print *,x
	call sub(a,loc(x),m)
	end

	subroutine sub(a,b,m)
	dimension a(*),m(*)
	logical m
	pointer(b,x)
	do i=1,1000
	  if( m(i) ) x = a(i)
	end do
	print *,x
	end

	subroutine init(a,m)
	dimension a(*),m(*)
	logical m
	do i=1,1000
	  a(i) = i
	  m(i) = .false.
	end do
	m(500) = .true.
	end
