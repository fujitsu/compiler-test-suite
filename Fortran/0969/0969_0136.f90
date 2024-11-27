

interface
 function ifunc01() result(irst01)
  integer, pointer :: irst01
 end function
end interface

procedure(ifunc01), pointer :: pifunc01p

procedure(integer)          :: pproc01
integer, external           :: eproc01

call csub01(pproc01, 101)
call csub01(eproc01, 202)

call csub02(pproc01, 101)
call csub02(eproc01, 202)

print *,'pass'

contains
 subroutine csub01(pifunc01, carg01)
  procedure(ifunc01)          :: pifunc01
  integer                     :: carg01
  integer, pointer            :: ip01
  ip01 => pifunc01()
  if (ip01.ne.carg01) print *,'csub01 error'
 end subroutine

 subroutine csub02(pifunc02, carg02)
  procedure(integer)          :: pifunc02
  integer                     :: i
  integer                     :: carg02
  i = pifunc02()
  if (i.ne.carg02)    print *,'csub02 error'
 end subroutine

end

function pifunc01() result(prst01)
 integer, pointer :: prst01
 integer, target  :: i01
 prst01 => i01
 i01 = 101
end function

function pproc01() result(prst01)
 integer, pointer :: prst01
 integer, target  :: i01
 prst01 => i01
 i01 = 101
end function

function eproc01() result(erst01)
 integer, pointer :: erst01
 integer, target  :: i01
 erst01 => i01
 i01 = 202
end function
