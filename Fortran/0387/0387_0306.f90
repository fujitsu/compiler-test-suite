subroutine s
interface
 function nf()
 end function
end interface
procedure (nf), pointer :: ip
ip=>nf
call ss(ip,nf,kf(ip),null())
contains
subroutine ss(ip,nf,kp,np)
interface
 function nf()
 end function
end interface
procedure (nf), pointer :: ip,kp,np
if (.not.associated(ip))print *,'error-01'
if (.not.associated(kp))print *,'error-02'
if (     associated(np))print *,'error-03'
if (.not.associated(ip,nf))print *,'error-11'
if (.not.associated(kp,nf))print *,'error-12'
if (.not.associated(kp,ip))print *,'error-13'
if (ip()/=1)print *,'error-21'
if (kp()/=1)print *,'error-31'
end subroutine 
function kf(mf)
interface
 function nf()
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
   nf=1
 end function
