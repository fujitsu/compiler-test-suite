interface
 function i() result(ir)
  integer(kind=4) :: ir
 end function
end interface
intrinsic                          :: iabs
integer(kind=4), external, pointer :: p
integer(kind=4), external          :: e
call csub01(iabs)
p => iabs
p => e
p => i
contains
 subroutine csub01(arg01)
  integer(kind=4), external :: arg01
 end subroutine
end

function e() result(er)
 integer(kind=4) :: er
 er=4
end function

function i() result(ir)
 integer(kind=4) :: ir
 ir = 4
end function
