        module mod
	integer*4 m_local_i4
	integer*4 m_com_i4
	common    m_com_i4
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
	p_local_i4 = p_local_i4 + p_local_i4 
	p_com_i4   = p_com_i4   + p_com_i4 
	m_local_i4 = m_local_i4 + m_local_i4 
	m_com_i4   = m_com_i4   + m_com_i4 
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
