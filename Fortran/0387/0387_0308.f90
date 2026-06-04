subroutine s
 implicit character(2)(a-z)
interface
 function nf()
 implicit character(2)(a-z)
 end function
end interface
procedure (nf), pointer :: ip
ip=>nf
call ss(ip,nf,kf(ip),null())
contains
subroutine ss(ip,nf,kp,np)
implicit character(2)(a-z)
interface
 function nf()
 implicit character(2)(a-z)
 end function
end interface
procedure (nf), pointer :: ip,kp,np
if (.not.associated(ip))print *,'error-01'
if (.not.associated(kp))print *,'error-02'
if (     associated(np))print *,'error-03'
if (.not.associated(ip,nf))print *,'error-11'
if (.not.associated(kp,nf))print *,'error-12'
if (.not.associated(kp,ip))print *,'error-13'
if (ip()/='12')print *,'error-21'
if (kp()/='12')print *,'error-31'
end subroutine 
function kf(mf)
 implicit character(2)(a-z)
interface
 function nf()
 implicit character(2)(a-z)
 end function
end interface
procedure (nf), pointer :: kf,mf
kf=>mf
end function
end
call s

print *,'pass'
end

 function nf()
 implicit character(2)(a-z)
   nf='12'
 end function
