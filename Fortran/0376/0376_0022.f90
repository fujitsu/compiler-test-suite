subroutine s
interface 
 function jfun()
  pointer::jfun
 end function
end interface

procedure(jfun),pointer :: mp
mp=>jfun
call ss(mp)
contains
subroutine ss(mf)
interface 
 function mf()
  pointer::mf
 end function
end interface
if (mf()/=123)print *,'error-17'
end subroutine
end subroutine
call s
print *,"pass"
end
 function jfun()
  pointer::jfun
  allocate(jfun)
  jfun=123
 end function
