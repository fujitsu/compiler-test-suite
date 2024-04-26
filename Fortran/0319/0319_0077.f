	subroutine sun
	call sun_inter
        goto 99
	contains
	  subroutine sun_inter
 	  goto 10
10	  end subroutine sun_inter
99	end subroutine sun
	program main
	integer fun
 	call sun
 	print *,fun()
 	call sun_inter
	goto 99
	contains
	  subroutine sun_inter
 	  goto 10
10	  end subroutine sun_inter
99	end program main
	integer function fun()
	call sun_inter
	fun=1
	goto 99
	contains
	  subroutine sun_inter
 	  goto 10
10	  end subroutine sun_inter
99	end function fun
