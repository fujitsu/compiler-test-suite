interface
 subroutine isub01()
 end subroutine
 function ifunc01() result(irst01)
  integer :: irst01
 end function
 function ifunc02() result(irst02)
  character :: irst02
 end function
 function ifunc03() result(irst03)
  character(4) :: irst03
 end function
end interface

procedure(       ) :: p01
procedure(isub01 ) :: pisub01
procedure(ifunc01) :: pifunc01
procedure(ifunc02) :: pifunc02
procedure(ifunc03) :: pifunc03

call sub01(p01)
call sub01(pisub01)
call sub01(pifunc01)
call sub01(pifunc02)
call sub01(pifunc03)
call sub01(isub01)
call sub01(ifunc01)
call sub01(ifunc02)
call sub01(ifunc03)
call sub02(p01)
call sub02(pisub01)
call sub02(pifunc01)
call sub02(pifunc02)
call sub02(pifunc03)
call sub02(isub01)
call sub02(ifunc01)
call sub02(ifunc02)
call sub02(ifunc03)
call sub03(p01)
call sub03(pisub01)
call sub03(pifunc01)
call sub03(pifunc02)
call sub03(pifunc03)
call sub03(isub01)
call sub03(ifunc01)
call sub03(ifunc02)
call sub03(ifunc03)
call sub04(p01)
call sub04(pisub01)
call sub04(pifunc01)
call sub04(pifunc02)
call sub04(pifunc03)
call sub04(isub01)
call sub04(ifunc01)
call sub04(ifunc02)
call sub04(ifunc03)
call sub05(p01)
call sub05(pisub01)
call sub05(pifunc01)
call sub05(pifunc02)
call sub05(pifunc03)
call sub05(isub01)
call sub05(ifunc01)
call sub05(ifunc02)
call sub05(ifunc03)

end

subroutine sub01(s01_dp01)
 procedure() :: s01_dp01
end subroutine

subroutine sub02(s02_dp01)
 interface
  subroutine isub01()
  end subroutine
 end interface
 procedure(isub01) :: s02_dp01
end subroutine

subroutine sub03(s03_dp01)
 interface
  function ifunc01() result(irst01)
   integer :: irst01
  end function
 end interface
 procedure(ifunc01) :: s03_dp01
end subroutine

subroutine sub04(s04_dp01)
 interface
  function ifunc02() result(irst02)
   character :: irst02
  end function
 end interface
 procedure(ifunc02) :: s04_dp01
end subroutine

subroutine sub05(s05_dp01)
 interface
  function ifunc03() result(irst03)
   character(4) :: irst03
  end function
 end interface
 procedure(ifunc03) :: s05_dp01
end subroutine

subroutine isub01()
end subroutine

function ifunc01() result(irst01)
 integer :: irst01
 irst01 = 1
end function

function ifunc02() result(irst02)
 character :: irst02
 irst02 = 'a'
end function

function ifunc03() result(irst03)
 character(4) :: irst03
 irst03 = 'pass'
end function

subroutine p01()
end subroutine

subroutine pisub01()
end subroutine

function pifunc01() result(pirst01)
 integer :: pirst01
 pirst01 = 1
end function

function pifunc02() result(pirst02)
 character :: pirst02
 pirst02 = 'a'
end function

function pifunc03() result(pirst03)
 character(4) :: pirst03
 pirst03 = 'pass'
end function
