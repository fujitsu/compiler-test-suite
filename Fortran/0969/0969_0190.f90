contains
 subroutine csub01(cs01_dfunc01, cs01_dfunc02)
  interface
   function cs01_dfunc01() result(cs01_drst01)
    character(:), allocatable :: cs01_drst01
   end function
  end interface
  procedure(cs01_dfunc01) :: cs01_dfunc02
 end subroutine
 subroutine csub02(cs02_dfunc01, cs02_dfunc02)
  interface
   function cs02_dfunc01() result(cs02_drst01)
    integer, allocatable :: cs02_drst01
   end function
  end interface
  procedure(cs02_dfunc01) :: cs02_dfunc02
  print *,cs02_dfunc01()
  print *,cs02_dfunc02()
 end subroutine
 subroutine csub03(cs03_dfunc01, cs03_dfunc02)
  interface
   function cs03_dfunc01() result(cs03_drst01)
    character(:), allocatable :: cs03_drst01
   end function
  end interface
  procedure(cs03_dfunc01) :: cs03_dfunc02
 end subroutine
end
