        module mod
	integer*4 m_local_i4
	integer*4 m_com_i4
	common    m_com_i4
	contains
	  subroutine mod_sub
	  integer*4 ms_local_i4
	  integer*4 ms_com_i4
          call mod_sub_child_1
	  contains
	    subroutine mod_sub_child_1
	    m_local_i4  = 10
	    m_com_i4    = 20
	    ms_local_i4 = 10
	    ms_com_i4   = 20
            call mod_sub_child_2
	    return
	    end subroutine
	    subroutine mod_sub_child_2
	    m_local_i4  = 10
	    m_com_i4    = 20
	    ms_local_i4 = 10
	    ms_com_i4   = 20
            call mod_sub_child_3
	    return
	    end subroutine
	    subroutine mod_sub_child_3
	    m_local_i4  = 10
	    m_com_i4    = 20
	    ms_local_i4 = 10
	    ms_com_i4   = 20
            call mod_sub_child_4
	    return
	    end subroutine
	    subroutine mod_sub_child_4
	    m_local_i4  = 10
	    m_com_i4    = 20
	    ms_local_i4 = 10
	    ms_com_i4   = 20
            call mod_sub_child_5
	    return
	    end subroutine
	    subroutine mod_sub_child_5
	    m_local_i4  = 10
	    m_com_i4    = 20
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
	p_local_i4 = p_local_i4 + p_local_i4
	p_com_i4   = p_com_i4   + p_com_i4
	m_local_i4 = m_local_i4 + m_local_i4
	m_com_i4   = m_com_i4   + m_com_i4
	call child_1
	p_local_i4 = p_local_i4 + p_local_i4
	p_com_i4   = p_com_i4   + p_com_i4
	m_local_i4 = m_local_i4 + m_local_i4
	m_com_i4   = m_com_i4   + m_com_i4
	print *,'=== subroutine child called ==='
	print *,'local  = ',p_local_i4
	print *,'common = ',p_com_i4
	print *,'m_local  = ',m_local_i4
	print *,'m_common = ',m_com_i4
	p_local_i4 = p_local_i4 + p_local_i4
	p_com_i4   = p_com_i4   + p_com_i4
	m_local_i4 = m_local_i4 + m_local_i4
	m_com_i4   = m_com_i4   + m_com_i4
	call mod_sub
	p_local_i4 = p_local_i4 + p_local_i4
	p_com_i4   = p_com_i4   + p_com_i4
	m_local_i4 = m_local_i4 + m_local_i4
	m_com_i4   = m_com_i4   + m_com_i4
	print *,'=== module subroutine called ==='
	print *,'local  = ',p_local_i4
	print *,'common = ',p_com_i4
	print *,'m_local  = ',m_local_i4
	print *,'m_common = ',m_com_i4
	stop
	contains
	  subroutine child_1
	  p_local_i4 = 1
	  p_com_i4   = 2
	  m_local_i4 = 1
	  m_com_i4   = 2
  	  call child_2
	  return
	  end subroutine child_1
	  subroutine child_2
	  p_local_i4 = 4
	  p_com_i4   = 8
	  m_local_i4 = 4
	  m_com_i4   = 8
	  call child_3
	  return
	  end subroutine child_2
	  subroutine child_3
	  p_local_i4 = 3
	  p_com_i4   = 6
	  m_local_i4 = 3
	  m_com_i4   = 6
	  call child_4
	  return
	  end subroutine child_3
	  subroutine child_4
	  p_local_i4 = 2
	  p_com_i4   = 4
	  m_local_i4 = 2
	  m_com_i4   = 4
	  call child_5
	  return
	  end subroutine child_4
	  subroutine child_5
	  p_local_i4 = 5
	  p_com_i4   = 1
	  m_local_i4 = 5
	  m_com_i4   = 1
	  return
	  end subroutine child_5
	end
