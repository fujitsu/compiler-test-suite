module m1
contains
subroutine sub01()
 interface
  function ifunc01(di01) result(irst01)
   integer :: di01
   character(:), allocatable :: irst01
  end function
 end interface

 procedure(ifunc01)          :: pproc1
 procedure(ifunc01), pointer :: pproc2

 pproc2 => ifunc01

 if (pproc1(1).ne.'1') print *, 'error'
 if (pproc2(1).ne.'1') print *, 'error'


 call sub02(pproc1, pproc2)


end subroutine

subroutine sub02(pproc1, pproc2)
 interface
  function ifunc01(di01) result(irst01)
   integer :: di01
   character(:), allocatable :: irst01
  end function
 end interface
 procedure(ifunc01)          :: pproc1, pproc2
 procedure(ifunc01), pointer :: pprocp

 pprocp => ifunc01

 if (pproc1(1).ne.'1') print *, 'error'
 if (pproc2(1).ne.'1') print *, 'error'
 if (pprocp(1).ne.'1') print *, 'error'

 call sub03(ifunc01, pproc1, pprocp)

end subroutine

subroutine sub03(ifunc01, pproc1, pprocp1)
 interface
  function ifunc01(di01) result(irst01)
   integer :: di01
   character(:), allocatable :: irst01
  end function
 end interface
 procedure(ifunc01)          :: pproc1,  pproc2
 procedure(ifunc01), pointer :: pprocp1 


 if (pproc1(1).ne.'1') print *, 'error'
 if (pproc2(1).ne.'1') print *, 'error'
 if (pprocp1(1).ne.'1') print *, 'error'

end subroutine
end

function pproc1(di01) result(rst)
 integer :: di01
 character(:), allocatable :: rst
 allocate(character(1) :: rst)
 rst = '1'
end function

function pproc2(di01) result(rst)
 integer :: di01
 character(:), allocatable :: rst
 allocate(character(1) :: rst)
 rst = '1'
end function

function ifunc01(di01) result(irst01)
 integer :: di01
 character(:), allocatable :: irst01
 allocate(character(1) :: irst01)
 irst01 = '1'
end function
use m1
call sub01()
 print *,'pass'

end

