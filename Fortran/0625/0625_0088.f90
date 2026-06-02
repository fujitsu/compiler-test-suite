interface
 subroutine isub01(is01_arg01)
  procedure(integer), pointer :: is01_arg01
 end subroutine
 function ifunc01(if01_arg01) result(irst01)
  procedure(integer), pointer :: if01_arg01
  procedure(integer), pointer :: irst01
 end function
 function ifunc02() result(irst02)
  integer :: irst02
 end function
end interface

procedure(ifunc02), pointer :: pifunc02p01

pifunc02p01 => ifunc02

call isub01(ifunc01(pifunc02p01))
call isub01(ifunc01(ifunc01(pifunc02p01)))

print *,'pass'

end

subroutine isub01(is01_arg01)
 procedure(integer), pointer :: is01_arg01
 if (is01_arg01() .ne. 2) print *,'isub01'
end subroutine

function ifunc01(if01_arg01) result(irst01)
 procedure(integer), pointer :: if01_arg01
 procedure(integer), pointer :: irst01
 irst01 => if01_arg01
end function

function ifunc02() result(irst02)
 integer :: irst02
 irst02 = 2
end function
