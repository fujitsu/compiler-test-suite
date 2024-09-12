subroutine s
interface 
 function jfun()
 end function
end interface
procedure(jfun),pointer :: ip,kp
ip=>jfun
kp=>jfun
if (.not.associated(ip,kp))print *,'error-01'
if (.not.associated(ip,jfun))print *,'error-02'
call ss(ip,kp)
contains
subroutine ss(ip,kp)
interface 
 function jf()
 end function
end interface
procedure(jf),pointer :: ip,kp
if (.not.associated(ip))print *,'error-12'
if (.not.associated(ip,kp))print *,'error-11'
end subroutine
end subroutine
call s
print *,"pass"
end
 function jfun()
  jfun=123
 end function
