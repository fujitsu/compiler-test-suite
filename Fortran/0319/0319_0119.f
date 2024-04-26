	program main
	integer*4,target ::p_local_i4
	integer*4,pointer::pli4_p
	p_local_i4 = 2
	pli4_p => p_local_i4
	pli4_p = p_local_i4 + pli4_p
	call child
	pli4_p = p_local_i4 + pli4_p
	print *,'area    = ',p_local_i4
	print *,'pointer = ',pli4_p
	stop
	contains
	  subroutine child
	  return
	  end subroutine child
	end
