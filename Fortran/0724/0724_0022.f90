procedure(), pointer :: pprocp01, pprocp02
external             :: eprocp01, eprocp02
pointer              :: eprocp01, eprocp02

call pprocp01()
call eprocp01()

call csub01(pprocp01)
call csub01(eprocp01)

contains
 subroutine csub01(dpprocp01)
  interface
   function ifunc01() result(irst01)
    real :: irst01
   end function
  end interface
  procedure(ifunc01), pointer :: dpprocp01
 end subroutine

end
