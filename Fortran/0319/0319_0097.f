      module mod
      integer*4,dimension(10):: m_local
      contains
        subroutine m_s1
        print *,m_local
        return
        entry m_s1_e
        m_local=10
        return
        end subroutine
        subroutine m_s2
        call m_s1_e
        call m_s1
        return
        end subroutine
      end module
      use mod
      call m_s2
      end
