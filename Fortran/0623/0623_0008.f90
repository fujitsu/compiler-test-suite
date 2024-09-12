interface
 subroutine isub01(is01_arg01, is01_arg02)
  integer, optional    :: is01_arg01
  logical, intent(out) :: is01_arg02
 end subroutine
 function ifunc01(if01_arg01, if01_arg02) result(irst01)
  integer, optional :: if01_arg01
  integer           :: if01_arg02
  integer           :: irst01
 end function
end interface

procedure(isub01)  :: psub01
procedure(ifunc01) :: pfunc01

logical :: l01
integer :: i01, i02
i01 = 1
i02 = 2

call isub01(is01_arg02 = l01)
call isub01(i01, l01)

i01 = ifunc01(if01_arg02 = i02)
i01 = ifunc01(i01, i02)

call psub01(is01_arg02 = l01)
call psub01(i01, l01)

i01 = pfunc01(if01_arg02 = i02)
i01 = pfunc01(i01, i02)

print *,'pass'

end

subroutine isub01(is01_arg01, is01_arg02)
 integer, optional    :: is01_arg01
 logical, intent(out) :: is01_arg02
 is01_arg02 = present(is01_arg01)
end subroutine

function ifunc01(if01_arg01, if01_arg02) result(irst01)
 integer, optional :: if01_arg01
 integer           :: if01_arg02
 integer           :: irst01
 if (present(if01_arg01)) then
  irst01 = if01_arg01 + if01_arg02
 else
  irst01 = if01_arg02
 end if
end function

subroutine psub01(ps01_arg01, ps01_arg02)
 integer, optional    :: ps01_arg01
 logical, intent(out) :: ps01_arg02
 ps01_arg02 = present(ps01_arg01)
end subroutine

function pfunc01(pf01_arg01, pf01_arg02) result(prst01)
 integer, optional :: pf01_arg01
 integer           :: pf01_arg02
 integer           :: prst01
 if (present(pf01_arg01)) then
  prst01 = pf01_arg01 + pf01_arg02
 else
  prst01 = pf01_arg02
 end if
end function
