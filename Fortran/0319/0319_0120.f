	program main
	real*4,target  :: p_local_r4
	real*4,pointer :: plr4_p
	p_local_r4 = 2.0
	plr4_p => p_local_r4
	plr4_p = p_local_r4 + p_local_r4
	call child
	plr4_p = p_local_r4 + p_local_r4
	print *,'area    = ',p_local_r4
	print *,'pointer = ',plr4_p
	stop
	contains
	  subroutine child
	  print *,'pointer = ',plr4_p
	  prl4_p = 2.0
	  return
	  end subroutine child
	end
