        module mod
	integer*4 m_local_i4
	integer*4 m_com_i4
	common /com/m_com_i4
        contains
          subroutine mod_s1
          m_local_i4 = 2
          m_com_i4   = 4
          m_local_i4 = m_local_i4 + m_local_i4
          m_com_i4   = m_com_i4   + m_com_i4
          call mod_s1_child
          m_local_i4 = m_local_i4 + m_local_i4
          m_com_i4   = m_com_i4   + m_com_i4
          print *,'=== mod_s1_child called at mod_s1 ==='
          print *,'local  = ',m_local_i4
          print *,'common = ',m_com_i4
          m_local_i4 = m_local_i4 + m_local_i4
          m_com_i4   = m_com_i4   + m_com_i4
          call mod_s2
          m_local_i4 = m_local_i4 + m_local_i4
          m_com_i4   = m_com_i4   + m_com_i4
          print *,'=== mod_s2 called at mod_s1 ==='
          print *,'local  = ',m_local_i4
          print *,'common = ',m_com_i4
          return
  	  contains
	    subroutine mod_s1_child
	    m_local_i4 = 1
	    m_com_i4   = 2
	    return
	    end subroutine mod_s1_child
          end subroutine mod_s1
          subroutine mod_s2
  	  integer*4 s_local_i4
	  integer*4 s_com_i4
	  common /com/s_com_i4
  	  s_local_i4 = 20
	  s_com_i4   = 40
	  s_local_i4 = s_local_i4 + s_local_i4
	  s_com_i4   = s_com_i4   + s_com_i4
	  call mod_s2_child
	  s_local_i4 = s_local_i4 + s_local_i4
	  s_com_i4   = s_com_i4   + s_com_i4
	  print *,'=== mod_s2_child called at mod_s2 ==='
	  print *,'subroutine local  = ',s_local_i4
	  print *,'subroutine common = ',s_com_i4
          return
          contains                
            subroutine mod_s2_child
            call mod_s3
            return
            end subroutine mod_s2_child
          end subroutine mod_s2
          subroutine mod_s3
  	  integer*4 s_local_i4
	  integer*4 s_com_i4
	  common /com/s_com_i4
	  s_local_i4 = 40
	  s_com_i4   = 80
          return
          end subroutine mod_s3
        end module mod
        use mod
        call mod_s1
        end
