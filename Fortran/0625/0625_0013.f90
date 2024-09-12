module mod01
 contains
  function m01_func01() result(m01_rst01)
   integer :: m01_rst01
   entry m01_f01_ent01() result(m01_rst01)
   m01_rst01 = 1
  end function
  subroutine m01_sub01()
   call m01_sub02(m01_func01)
   call m01_sub02(m01_f01_ent01)
   if (m01_func02(m01_func01).ne.m01_func02(m01_f01_ent01)) print *,'101'
   call m01_s01_csub01()
   contains
    subroutine m01_s01_csub01()
     call m01_sub02(m01_func01)
     call m01_sub02(m01_f01_ent01)
     if (m01_func02(m01_func01).ne.m01_func02(m01_f01_ent01)) print *,'201'
    end subroutine
  end subroutine
  subroutine m01_sub02(m01_s02_dp01)
   integer, external :: m01_s02_dp01
  end subroutine
  function m01_func02(m01_f02_dp01) result(m01_rst02)
   integer, external :: m01_f02_dp01
   integer :: m01_rst02
   m01_rst02 = m01_f02_dp01()
  end function
end module

use mod01

call m01_sub02(m01_func01)
call m01_sub02(m01_f01_ent01)
call m01_sub01()
if (m01_func02(m01_func01).ne.m01_func02(m01_f01_ent01)) print *,'301'

print *,'pass'

contains
 subroutine csub01()
  call m01_sub02(m01_func01)
  call m01_sub02(m01_f01_ent01)
  if (m01_func02(m01_func01).ne.m01_func02(m01_f01_ent01)) print *,'401'
 end subroutine
end
