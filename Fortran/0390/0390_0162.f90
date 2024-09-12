module m1
contains
subroutine sub01()
 interface
  function ifunc01(di01) result(irst01)
   integer :: di01
  end function
 end interface

 procedure(ifunc01)          :: pproc1
 procedure(ifunc01), pointer :: pproc2

 pproc2 => ifunc01

 if (pproc1(1).ne.1) print *, 'error'
 if (pproc2(1).ne.1) print *, 'error'


 call sub02(pproc1, pproc2)


end subroutine

subroutine sub02(pproc1, pproc2)
 interface
  function ifunc01(di01) result(irst01)
   integer :: di01
  end function
 end interface
 procedure(ifunc01)          :: pproc1, pproc2
 procedure(ifunc01), pointer :: pprocp

 pprocp => ifunc01

 if (pproc1(1).ne.1) print *, 'error'
 if (pproc2(1).ne.1) print *, 'error'
 if (pprocp(1).ne.1) print *, 'error'

 call sub03(pprocp )

end subroutine

subroutine sub03(p1)
 interface
  function ifunc01(di01) result(irst01)
   integer :: di01
  end function
 end interface
 procedure(ifunc01), pointer :: p1

 if (p1(1)/=1) print *, 'error'

end subroutine
end

  function ifunc01(di01) result(irst01)
  entry    pproc1(di01) result(irst01)
   integer :: di01
irst01 = di01
  end function

use m1
call sub01()
 print *,'pass'
end
