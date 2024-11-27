
interface
 subroutine isub01(iarg01)
  procedure(character(4)) :: iarg01
 end subroutine
 function ifunc01() result(irst01)
  character(4) :: irst01
 end function
end interface

procedure(ifunc01), pointer :: pprocp01
pprocp01 => ifunc01

call isub01(cfunc04(pprocp01))

contains
 function cfunc01() result(crst01)
  character(4) :: crst01
  crst01 = 'crst'
 end function
 function cfunc02(carg01) result(crst01)
  procedure(cfunc01)          :: carg01
  procedure(cfunc01), pointer :: crst01
  crst01 => carg01
 end function
 function cfunc03() result(crst01)
  procedure(cfunc01), pointer :: crst01
  crst01 => ifunc01
 end function
 function cfunc04(carg01) result(crst01)
  procedure(cfunc01), pointer :: carg01
  procedure(cfunc01), pointer :: crst01
  crst01 => carg01
 end function
end

subroutine isub01(iarg01)
 procedure(character(4)) :: iarg01
 print *,iarg01()
end subroutine

function ifunc01() result(irst01)
 character(4) :: irst01
 irst01 = 'pass'
end function
