function func01(arg01) result(rst01)
 integer, value :: arg01
 integer        :: rst01
 rst01 = arg01
end function

function ifunc01(iarg01) result(irst01)
 integer, value :: iarg01
 irst01 = iarg01
end function

subroutine sub01(arg01)
 integer, value :: arg01
 if (arg01.ne.100) print *,'error'
end subroutine

subroutine isub01(iarg01)
 integer, value :: iarg01
 if (iarg01.ne.100) print *,'error'
end subroutine

module mod01
 interface
  function ifunc01(iarg01) result(irst01)
   integer, value :: iarg01
  end function
  subroutine isub01(iarg01)
   integer, value :: iarg01
  end subroutine
 end interface
 procedure(ifunc01) :: func01
 procedure(isub01) :: sub01
end module

use mod01

call isub01(func01(100))
call sub01(ifunc01(100))

print *,'pass'

end
