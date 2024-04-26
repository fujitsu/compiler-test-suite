	subroutine sub
	call sub_inter
        goto 99
	contains
	  subroutine sub_inter
 	  goto 10
10	  end subroutine sub_inter
99	end subroutine sub
c
	program aa
	integer fun
 	call sub
 	print *,fun()
 	call sub_inter
	goto 99
	contains
	  subroutine sub_inter
 	  goto 10
10	  end subroutine sub_inter
99	end program aa
c
	integer function fun()
	call sub_inter
	fun=1
	goto 99
	contains
	  subroutine sub_inter
 	  goto 10
10	  end subroutine sub_inter
99	end function fun
