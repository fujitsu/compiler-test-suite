	program main
	integer*4 p_local_i4
	integer*4 p_com_i4
	common p_com_i4
	p_local_i4 = 2
	p_com_i4   = 4
	call child
	print *,'local  = ',p_local_i4
	print *,'common = ',p_com_i4
	stop
	contains
	  subroutine child
	  p_local_i4 = 4
	  p_com_i4 = 8
	  return
	  end subroutine child
	end
