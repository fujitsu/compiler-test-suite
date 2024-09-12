module mod01
 interface
  function mifunc01() result(mirst01)
   character(4) :: mirst01
  end function
 end interface
 procedure(mifunc01) :: m1pproc01
end module

use mod01

procedure(mifunc01), pointer :: pmifunc01p

pmifunc01p => m1pproc01

print *,pmifunc01p()

end

function mifunc01() result(mirst01)
 character(4) :: mirst01
 mirst01 = 'pass'
end function

function m1pproc01() result(mirst01)
 character(4) :: mirst01
 mirst01 = 'pass'
end function
