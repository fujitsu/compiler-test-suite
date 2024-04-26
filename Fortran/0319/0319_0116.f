        module mod
	integer*4 m_local_i4,m_com_i4
	common    m_com_i4
	integer*4,private ::m_pri_local_i4
	contains
	  subroutine mod_sub_1
	  m_local_i4  = 1
	  m_pri_local_i4  = 2
	  m_com_i4    = 3
	  m_local_i4  = m_local_i4  + m_local_i4
	  m_pri_local_i4  = m_pri_local_i4 + m_pri_local_i4
	  m_com_i4    = m_com_i4    + m_com_i4
	  call mod_sub_c1
	  call mod_sub_c2
	  call mod_sub_2
	  call mod_sub_3
	  print *,'m_local_14 = ',m_local_i4
	  print *,'m_pri_local_14 = ',m_pri_local_i4
	  print *,'m_com_14 = ',m_com_i4
	  m_local_i4     = m_local_i4     + m_local_i4
	  m_pri_local_i4 = m_pri_local_i4 + m_pri_local_i4
	  m_com_i4       = m_pri_local_i4 + m_pri_local_i4
	  return
	  contains
	    subroutine mod_sub_c1
	    m_local_i4  = m_local_i4  + m_local_i4
	    m_pri_local_i4  = m_pri_local_i4 + m_pri_local_i4
	    m_com_i4    = m_com_i4    + m_com_i4
	    call mod_sub_c2
	    call mod_sub_2
	    m_local_i4  = m_local_i4  + m_local_i4
	    m_pri_local_i4  = m_pri_local_i4 + m_pri_local_i4
	    m_com_i4    = m_com_i4    + m_com_i4
	    return
	    end subroutine
	    subroutine mod_sub_c2
	    m_local_i4  = m_local_i4  + m_local_i4
	    m_pri_local_i4  = m_pri_local_i4 + m_pri_local_i4
	    m_com_i4    = m_com_i4    + m_com_i4
	    call mod_sub_2
	    m_local_i4  = m_local_i4  + m_local_i4
	    m_pri_local_i4  = m_pri_local_i4 + m_pri_local_i4
	    m_com_i4    = m_com_i4    + m_com_i4
	    return
	    end subroutine
	  end subroutine
	  subroutine mod_sub_2
	  m_local_i4  = m_local_i4  + m_local_i4
	  m_pri_local_i4  = m_pri_local_i4 + m_pri_local_i4
	  m_com_i4    = m_com_i4    + m_com_i4
	  call mod_sub_3
	  m_local_i4  = m_local_i4  + m_local_i4
	  m_pri_local_i4  = m_pri_local_i4 + m_pri_local_i4
	  m_com_i4    = m_com_i4    + m_com_i4
	  end subroutine
	  subroutine mod_sub_3
	  m_local_i4  = m_local_i4  + m_local_i4
	  m_pri_local_i4  = m_pri_local_i4 + m_pri_local_i4
	  m_com_i4    = m_com_i4    + m_com_i4
	  end subroutine
	end module
	program main
	use mod
	call mod_sub_1
	print *,'m_local  = ',m_local_i4
	print *,'m_common = ',m_com_i4
	end
