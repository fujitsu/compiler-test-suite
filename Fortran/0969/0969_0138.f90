

interface
 function ifunc01() result(irst01)
  integer, allocatable :: irst01
 end function
end interface

integer, external  :: eproc01
procedure(integer) :: pproc01
procedure(ifunc01) :: pifunc01



call csub03(ifunc01)
call csub03(eproc01)
call csub03(pproc01)
call csub03(pifunc01)

contains
 subroutine csub01(eproc01)
  integer, external  :: eproc01
  print *,eproc01()
 end subroutine

 subroutine csub02(pproc01)
  procedure(integer) :: pproc01
  print *,pproc01()
 end subroutine

 subroutine csub03(pifunc01)
  procedure(ifunc01) :: pifunc01
  print *,pifunc01()
 end subroutine

end

function ifunc01() result(irst01)
 integer, allocatable :: irst01
 allocate(irst01)
 irst01 = 1
end function

function eproc01() result(erst01)
 integer, allocatable :: erst01
 allocate(erst01)
 erst01 = 2
end function

function pproc01() result(prst01)
 integer, allocatable :: prst01
 allocate(prst01)
 prst01 = 3
end function

function pifunc01() result(pirst01)
 integer, allocatable :: pirst01
 allocate(pirst01)
 pirst01 = 4
end function
