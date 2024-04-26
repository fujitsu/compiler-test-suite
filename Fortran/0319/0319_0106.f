	program main
	integer*4 p_local_i4
	integer*4 p_com_i4
	common /com/p_com_i4
	p_local_i4 = 2
	p_com_i4   = 4
	p_local_i4 = p_local_i4 + p_local_i4
	p_com_i4   = p_com_i4   + p_com_i4
	call child_1
	p_local_i4 = p_local_i4 + p_local_i4
	p_com_i4   = p_com_i4   + p_com_i4
	print *,'=== main child called at main ==='
	print *,'local  = ',p_local_i4
	print *,'common = ',p_com_i4
	p_local_i4 = p_local_i4 + p_local_i4
	p_com_i4   = p_com_i4   + p_com_i4
	call sub_1
	p_local_i4 = p_local_i4 + p_local_i4
	p_com_i4   = p_com_i4   + p_com_i4
	print *,'=== subroutine called at main ==='
	print *,'local  = ',p_local_i4
	print *,'common = ',p_com_i4
	stop
	contains
	  subroutine child_1
	  p_local_i4 = 1
	  p_com_i4   = 2
	  return
	  end subroutine child_1
	end
        subroutine sub_1
	integer*4 s_local_i4
	integer*4 s_com_i4
	common /com/s_com_i4
	s_local_i4 = 20
	s_com_i4   = 40
	s_local_i4 = s_local_i4 + s_local_i4
	s_com_i4   = s_com_i4   + s_com_i4
	call child_1
	s_local_i4 = s_local_i4 + s_local_i4
	s_com_i4   = s_com_i4   + s_com_i4
	print *,'=== subroutine child called at sub ==='
	print *,'subroutine local  = ',s_local_i4
	print *,'subroutine common = ',s_com_i4
        return
        contains                
          subroutine child_1
          call sub_2
          end subroutine child_1
        end subroutine sub_1
        subroutine sub_2
	integer*4 s_local_i4
	integer*4 s_com_i4
	common /com/s_com_i4
	s_local_i4 = 40
	s_com_i4   = 80
        return
        end subroutine sub_2
