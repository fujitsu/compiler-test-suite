subroutine sub01(cs01_dfunc01, cs01_dfunc02)
 interface
  function cs01_dfunc01() result(cs01_drst01)
   character(:), allocatable :: cs01_drst01
  end function
 end interface
 procedure(cs01_dfunc01) :: cs01_dfunc02
 procedure(cs01_dfunc01), pointer :: cs01_dfunc03
 cs01_dfunc03 => cs01_dfunc01 
 print *,cs01_dfunc02()
 print *,cs01_dfunc03()
end subroutine

end
