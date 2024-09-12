subroutine s
interface
 function nf()
 end function
end interface
procedure (nf), pointer :: ip
ip=>nf
ip=>kf(ip)
if (.not.associated(ip,nf))print *,'error-1'
if (.not.associated(ip,kf(ip)))print *,'error-2'
if (.not.associated(ip     ))print *,'error-4'
if (.not.associated(kf(ip) ))print *,'error-5'
if (ip()/=1)print *,'error-5'
if (nf()/=1)print *,'error-6'
contains
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
