module mod01
 interface
  function mifunc01(miarg01) result(mirst01) bind(c)
   integer :: miarg01
   integer :: mirst01
  end function
  subroutine misub01(miarg01)
   integer :: miarg01
  end subroutine
 end interface
 procedure(mifunc01), bind(c, name = 'ABC') :: pfunc01
 contains
  subroutine m1sub01(m1arg01)
   external :: m1arg01
   call m1arg01(pfunc01(1))
  end subroutine
end module

use mod01

procedure(misub01) :: psub01

call m1sub01(psub01)

print *,'pass'

end

function pfunc01(miarg01) result(mirst01) bind(c, name = 'ABC')
 integer :: miarg01
 integer :: mirst01
 mirst01 = miarg01
end function

subroutine psub01(miarg01)
 integer :: miarg01
 if (miarg01.ne.1) print *,'not pass'
end subroutine
