module mod01
 contains
  function m1func01(di01) result(m1rst01)
   integer         :: di01
   character(di01) :: m1rst01
   entry m1ent01(di01) result(m1rst01)
   m1rst01 = 'pass'
  end function
  subroutine m1sub02()
   procedure(m1ent01)  :: pmproc02
   call m1sub04(pmproc02(4))
  end subroutine
  subroutine m1sub04(dch01)
   character(4) :: dch01
   if (dch01.ne.'pass') print *,'nopass'
  end subroutine
end module

use mod01

procedure(m1ent01)           :: pmproc02
call m1sub04(pmproc02(4))

print *,'pass'

end

function pmproc02(di01) result(m1rst01)
 integer :: di01
 character(di01) :: m1rst01
 m1rst01 = 'pass'
end function
