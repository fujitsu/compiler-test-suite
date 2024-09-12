subroutine s
 implicit character(2)(a-z)
interface
 function nf()
 implicit character(2)(a-z)
 end function
end interface
procedure (nf), pointer :: ip
ip=> kf()
call ss(ip)
call ss(kf())
contains
subroutine ss(kp)
implicit character(2)(a-z)
intent(in)::kp
interface
 function nf()
 implicit character(2)(a-z)
 end function
end interface
procedure (nf), pointer :: kp
if (kp()/='12')print *,'error-31'
end subroutine 
function kf()
 implicit character(2)(a-z)
interface
 function nf()
 implicit character(2)(a-z)
 end function
end interface
procedure (nf), pointer :: kf
kf=>nf
end function
end
call s

print *,'pass'
end

 function nf()
 implicit character(2)(a-z)
   nf='12'
 end function
