interface
 function func01() result(rst01)
  integer :: rst01
 end function
end interface

call csub01(func01)

print *,'pass'

contains
 subroutine csub01(eproc01)
  integer, external :: eproc01
  integer           :: i
  i = eproc01()
  if (i.ne.111) print *,'error'
 end subroutine

end

function func01() result(rst01)
 interface
  function ifunc01() result(irst01)
   integer :: irst01
  end function
 end interface
 procedure(ifunc01) :: pifunc01
 integer            :: rst01
 rst01 = pifunc01()
end function

function ifunc01() result(irst01)
 integer :: irst01
 irst01 = 1
end function

function pifunc01() result(irst01)
 integer :: irst01
 irst01 = 111
end function
