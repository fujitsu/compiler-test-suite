	subroutine test1
	complex a(1000)
	real b(1000)/1000*1.0/
	integer j ; j = 0
	do i=1,1000
	  a(i) = sin(b(i))
	  j=j+1
	end do
	if( abs(a(1)-(0.841470957,0.0))/0.841470957 .gt. 0.1e-5 ) then
	  stop ' ERROR 1 '
	endif
	if( abs(a(1000)-(0.841470957,0.0))/0.841470957 .gt. 0.1e-5 ) then
	  stop ' ERROR 2 '
	endif
	print *,j
	end

	subroutine test2
	complex a(1000)/1000*1.0/
	real b(1000)
	integer j ; j = 0
	do i=1,1000
	  b(i) = cos(a(i))
	  j=j+1
	end do
        if( abs(b(1)-0.540302277)/b(1) .gt. 0.1e-5 ) then
	  stop ' ERROR 3 '
        endif
	if( abs(b(1000)-0.540302277)/b(1000) .gt. 0.1e-5 ) then
	  print *,b(1000)
	  stop ' ERROR 4 '
	endif
	print *,j
	end

	subroutine test3
	real a(1000)
	real b(1000)/1000*1.0/
	integer j ; j = 0
	do i=1,1000
	  a(i) = tan(b(i))
	  j=j+1
	end do
	if( abs(a(1)-1.55740774)/a(1) .gt. 0.1e-5 ) then
	  print *,' ERROR 5 ',a(1)
        endif
	if( abs(a(1)-1.55740774)/a(1) .gt. 0.1e-5 ) then
	  print *,' ERROR 6 ',a(1000)
        endif
	print *,j
	end

	subroutine test4
	real a(1000)/1000*1.0/
	real b(1000)
	integer j ; j = 0
	do i=1,1000
	  b(i) = sin(cmplx(a(i)))
	  j=j+1
	end do
	if( abs(b(1)-0.841470957)/a(1) .gt. 0.1e-5 ) then
	  print *, ' ERROR 6 ',b(1)
        endif
	if( abs(b(1000)-0.841470957)/a(1) .gt. 0.1e-5 ) then
	  print *, ' ERROR 7 ',b(1000)
        endif
	print *,j
	end
!
	call test1
	call test2
	call test3
	call test4
	end
