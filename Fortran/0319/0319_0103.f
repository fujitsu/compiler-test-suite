        module mod
	integer*4 m_local_i4
	integer*4 m_com_i4
	common    m_com_i4
	contains
	  subroutine mod_sub
	  integer*4 ms_local_i4
	  integer*4 ms_com_i4
	  m_local_i4 = 1
	  m_com_i4   = 2
	  ms_local_i4 = 1
	  ms_com_i4   = 2
	  call mod_sub_child
	  return
	  contains
	    subroutine mod_sub_child
	    m_local_i4 = 10
	    m_com_i4   = 20
	    ms_local_i4 = 10
	    ms_com_i4   = 20
	    return
	    end subroutine
	  end subroutine
	end module
	program main
	use mod
	integer*4 p_local_i4
	integer*4 p_com_i4
	common p_com_i4
	p_local_i4 = 2
	p_com_i4   = 4
	m_local_i4 = 2
	m_com_i4   = 4
	call child
	print *,'=== subroutine child called ==='
	print *,'local  = ',p_local_i4
	print *,'common = ',p_com_i4
	print *,'m_local  = ',m_local_i4
	print *,'m_common = ',m_com_i4
	call mod_sub
	print *,'=== module subroutine called ==='
	print *,'local  = ',p_local_i4
	print *,'common = ',p_com_i4
	print *,'m_local  = ',m_local_i4
	print *,'m_common = ',m_com_i4
	stop
	contains
	  subroutine child
	  p_local_i4 = 4
	  p_com_i4   = 8
	  m_local_i4 = 4
	  m_com_i4   = 8
	  return
	  end subroutine child
	end
