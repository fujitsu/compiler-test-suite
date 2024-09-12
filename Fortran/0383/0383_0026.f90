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
type(str) :: sss(1)
external :: sub00,func00
sss(1)%ppp1=>sub00
sss(1)%ppp2=>func00
call subsub()
contains 
subroutine subsub()
  print *, sss(1)%ppp2()
  call sss(1)%ppp1()
end subroutine
end
