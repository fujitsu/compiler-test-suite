	subroutine out(in)
	in = in + 1
	if( in < 10 ) then
	  in = in + 1
	else
	  in = in - 1
	endif
	end 
	module moda
	integer :: i=1
	integer :: j=2
	contains 
	  subroutine inn(in)
	  in = in + 1
	  if( in < 10 ) then
	    in = in + 1
	  else
	    in = in - 1
	  endif
	  end subroutine
	end module
	program main
	use moda
	integer :: u=1
	call inn(i)
	call out(u)
	if( i .ne. 3 .or. u .ne. 3 ) print *, '  ERROR(1)  '
	if( j .ne. 2 ) print *, '  ERROR(2)  '
	do k=1,10
          if( k.le.20 ) then
 	    call inn(i)
 	    call out(u)
	  endif
	end do
	print *,' PASS ',i,u
	end
