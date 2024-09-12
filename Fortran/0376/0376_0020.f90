subroutine s
interface 
 function jfun()
  pointer::jfun
 end function
end interface
procedure(jfun),pointer :: ip,kp,mp
ip=>jfun
kp=>jfun
mp=>jfun
if (.not.associated(ip,kp))print *,'error-01'
if (.not.associated(ip,jfun))print *,'error-02'
call ss(ip,jfun,kp,mp)
if (ip()/=123)print *,'error-03'
if (jfun()/=123)print *,'error-04'
if (kp()/=123)print *,'error-05'
if (mp()/=123)print *,'error-05'
contains
subroutine ss(ip,jf,kp,mf)
interface 
 function jf()
  pointer::jf
 end function
 function mf()
  pointer::mf
 end function
end interface
procedure(jf),pointer :: ip,kp
if (.not.associated(ip,kp))print *,'error-11'
if (.not.associated(ip,jf))print *,'error-12'
if (ip()/=123)print *,'error-13'
if (jf()/=123)print *,'error-14'
if (kp()/=123)print *,'error-15'
if (jfun()/=123)print *,'error-16'
if (mf()/=123)print *,'error-17'
end subroutine
end subroutine
integer,pointer :: p
integer,target :: t(2)
p=>t(2)
if (.not.associated(p,t(2))) print *,'error-00'
call s
print *,"pass"
end
 function jfun()
  pointer::jfun
  allocate(jfun)
  jfun=123
 end function
