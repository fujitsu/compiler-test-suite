subroutine s
implicit character(2)(a-z)
interface
 function nf()
implicit character(2)(a-z)
 end function
end interface
procedure (nf), pointer :: ip
ip=>nf
call ss(ip,nf,kf(ip),null(),1)
call ss(                mm=2)
contains
subroutine ss(ip,nf,kp,np,mm)
implicit character(2)(a-z)
integer mm
interface
 function nf()
implicit character(2)(a-z)
 end function
end interface
optional::ip,nf,kp,np
procedure (nf), pointer :: ip,kp,np
if (mm==1) then
if (.not.present(ip)) print *,'error-41'
if (.not.present(nf)) print *,'error-42'
if (.not.present(kp)) print *,'error-43'
if (.not.present(np)) print *,'error-44'
if (.not.associated(ip))print *,'error-01'
if (.not.associated(kp))print *,'error-02'
if (     associated(np))print *,'error-03'
if (.not.associated(ip,nf))print *,'error-11'
if (.not.associated(kp,nf))print *,'error-12'
if (.not.associated(kp,ip))print *,'error-13'
if (ip()/='12')print *,'error-21'
if (kp()/='12')print *,'error-31'
else
if (present(ip)) print *,'error-51'
if (present(nf)) print *,'error-52'
if (present(kp)) print *,'error-53'
if (present(np)) print *,'error-54'
endif
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
