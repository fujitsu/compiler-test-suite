	program main
	real a(1000)/1000*0/
	k=1
	do i=1,99
	  t = a(k) + 1
	  k=k+1
	  a(k) = t
	end do
	print *,sum(a)
	call sub(a)
	end

	subroutine sub(a)
	dimension a(*)
	k=1
	do i=1,99
	  t = a(k) + 1
	  k=k+1
	  a(k) = t
	end do
	print *,sum(a(1:99))
	end
