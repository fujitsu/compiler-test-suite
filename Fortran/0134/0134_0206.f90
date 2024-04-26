module m1
 interface 
   function jfun()
   end function
 end interface
contains
subroutine s
procedure(kfun),pointer :: kxpp
call t3(kxpp)
end subroutine
subroutine t3(kp)
procedure(kfun),pointer :: kp
kp=>kfun
if (.not.associated(kp,kfun)) print *,'error-22'
if (kp()/=2)print *,'error-23'
if (kfun()/=2)print *,'error-24'
end subroutine
function  kfun()
  kfun=2
  return 
entry     mfun()
  kfun=3
end function
end
use m1
call s
print *,"pass"
end
 function jfun()
  jfun=1
 end function
