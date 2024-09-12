subroutine sub00()
 print *,'sub'
end subroutine
function func00()
  func00 = 1.0
end function

program main
type :: str
  procedure(),nopass,pointer :: ppp1 
  procedure(),nopass,pointer :: ppp2
end type
type(str) :: sss
real rr
external :: sub00,func00
sss%ppp1=>sub00
sss%ppp2=>func00
call subsub()
contains 
subroutine subsub()
  call sss%ppp1()
  print *,sss%ppp2()
end subroutine
end
