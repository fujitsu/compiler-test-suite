call sub01()

end

subroutine sub01()
 interface
  function ifunc01(di01) result(irst01)
   integer :: di01
   character(di01) :: irst01
  end function
 end interface

 procedure(ifunc01)          :: pproc1
 procedure(ifunc01), pointer :: pproc2

 pproc2 => ifunc01

 if (pproc1(1).ne.'1') print *, 'error'
 if (pproc2(1).ne.'1') print *, 'error'

 call sub02(pproc1, pproc2)

 print *,'pass'

end subroutine

subroutine sub02(pproc1, pproc2)
 interface
  function ifunc01(di01) result(irst01)
   integer :: di01
   character(di01) :: irst01
  end function
  subroutine sub03(ifunc01, pproc1, pprocp1)
   interface
    function ifunc01(di01) result(irst01)
     integer :: di01
     character(di01) :: irst01
    end function
   end interface
   procedure(ifunc01)          :: pproc1,  pproc2
   procedure(ifunc01), pointer :: pprocp1, pprocp2
  end subroutine
 end interface

 procedure(ifunc01)          :: pproc1, pproc2
 procedure(ifunc01), pointer :: pprocp

 pprocp => ifunc01

 if (pproc1(1).ne.'1') print *, 'error'
 if (pproc2(1).ne.'1') print *, 'error'
 if (pprocp(1).ne.'1') print *, 'error'

 call sub03(ifunc01, pproc1, pprocp)
 call sub03(ifunc01, pproc2, pprocp)

end subroutine

subroutine sub03(ifunc01, pproc1, pprocp1)
 interface
  function ifunc01(di01) result(irst01)
   integer :: di01
   character(di01) :: irst01
  end function
 end interface
 procedure(ifunc01)          :: pproc1,  pproc2
 procedure(ifunc01), pointer :: pprocp1, pprocp2

 pprocp2 => ifunc01

 if (pproc1(1) .ne.'1') print *, 'error'
 if (pproc2(1) .ne.'1') print *, 'error'
 if (pprocp2(1).ne.'1') print *, 'error'

end subroutine

function pproc1(di01) result(rst)
 integer :: di01
 character(di01) :: rst
 rst = '1'
end function

function pproc2(di01) result(rst)
 integer :: di01
 character(di01) :: rst
 rst = '1'
end function

function ifunc01(di01) result(irst01)
 integer :: di01
 character(di01) :: irst01
 irst01 = '1'
end function
