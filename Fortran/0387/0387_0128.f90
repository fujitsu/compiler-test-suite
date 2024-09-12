interface
 function ifunc02() result(irst02)
  character(4) :: irst02
 end function
end interface

call sub01(ifunc02, 4)

end

function ifunc02() result(irst02)
 character(4) :: irst02
 irst02 = 'pass'
end function

subroutine sub01(dfunc01, di01)
 interface
  function dfunc01() result(drst01)
   character(4) :: drst01
  end function
 end interface
 integer :: di01
 print *,dfunc01()
end subroutine
