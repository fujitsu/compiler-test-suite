interface
 function ifunc01() result(irst01)
  integer, dimension(5) :: irst01
 end function
 function ifunc03() result(irst03)
  integer :: irst03
 end function
end interface

procedure(ifunc01), pointer :: pifunc01p
procedure(ifunc01)          :: pifunc01

procedure(ifunc03), pointer :: pifunc03p
procedure(ifunc03)          :: pifunc03

type ty01
 procedure(ifunc01), pointer, nopass :: pifunc01p
end type
type (ty01) :: tt01

integer                     :: i(5)

i = pifunc01()

i = pifunc03()

pifunc01p => pifunc01
i = pifunc01p()
tt01%pifunc01p => pifunc01
i = tt01%pifunc01p()

call csub01(ifunc01, pifunc01p, pifunc01)

print *,'pass'

contains
 subroutine csub01(ifunc02, pifunc02p, pifunc02)
  interface
   function ifunc02() result(irst01)
    integer, dimension(5) :: irst01
   end function
  end interface
  integer :: i(5)
  procedure(ifunc01), pointer :: pifunc02p
  procedure(ifunc01)          :: pifunc02
  i = pifunc02()
  pifunc02p => pifunc02
  i = pifunc02p()
 end subroutine

end

function ifunc01() result(irst01)
 integer, dimension(5) :: irst01
 irst01 = 5
end function

function pifunc01() result(pirst01)
 integer, dimension(5) :: pirst01
 pirst01 = 15
end function

 function ifunc03() result(irst03)
  integer :: irst03
 irst03 = 3
 end function

 function pifunc03() result(pirst03)
  integer :: pirst03
 pirst03 = 3
 end function
