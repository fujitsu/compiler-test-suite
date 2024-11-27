external :: eprocp01
pointer  :: eprocp01

call csub01(eprocp01, eprocp01)

contains
 subroutine csub01(dfunc01, dfunc02)
  interface
   function dfunc01() result(drst01)
    integer, pointer :: drst01
   end function
   function dfunc02() result(drst02)
    integer, allocatable :: drst02
   end function
  end interface
 end subroutine
end
