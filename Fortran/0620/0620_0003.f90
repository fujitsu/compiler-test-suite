interface
 function ifunc01() result(irst01)
  integer, dimension(5) :: irst01
 end function
 function ifunc02() result(irst01)
  integer, dimension(5) :: irst01
 end function
end interface

procedure(ifunc01), pointer :: pifunc01p
procedure(ifunc01)          :: pproc01
procedure(ifunc01)          :: eproc01

integer                     :: i(5)

i = ifunc02()
if (i(1).ne.5 ) print *, 'error'

i = pproc01()
if (i(1).ne.5 ) print *, 'error'

pifunc01p => pproc01
i = pifunc01p()
if (i(1).ne.5 ) print *, 'error'

pifunc01p => eproc01
i = pifunc01p()
if (i(1).ne.10) print *, 'error'

print *,'pass'

end

function pproc01() result(prst01)
 integer :: prst01(5)
 prst01 = 5
end function

function eproc01() result(erst01)
 integer :: erst01(5)
 erst01 = 10
end function

function ifunc02() result(prst01)
 integer :: prst01(5)
 prst01 = 5
end function
