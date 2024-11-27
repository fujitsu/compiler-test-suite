interface
 recursive function ifunc01(if01_dp01) result(irst01)
  procedure(integer), pointer, intent(in) :: if01_dp01
  integer                                 :: irst01
 end function
 function ifunc02() result(irst02)
  integer :: irst02
 end function
end interface

i = ifunc01(ifunc01)
i = ifunc01(ifunc02)

end

recursive function ifunc01(if01_dp01) result(irst01)
 procedure(integer), pointer, intent(in) :: if01_dp01
 integer                                 :: irst01
 procedure(integer)                      :: ifunc02
 irst01 = if01_dp01(ifunc02)
end function

function ifunc02() result(irst02)
 integer :: irst02
 irst02 = 1
end function
