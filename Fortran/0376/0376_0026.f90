subroutine s
interface 
 function jf()
 end function
end interface
procedure(jf),pointer :: ip,kp
pointer :: ix,kx
target  :: kk
ip=>jf
kp=>jf
ix=>kk
kx=>kk
call       ss(ip,kp,ix,kx)
contains
subroutine ss(ip,kp,ix,kx)
interface 
 function jf()
 end function
end interface
procedure(jf),pointer :: ip,kp
pointer :: ix,kx
if (.not.associated(ix,kx))print *,'error-11'
if (.not.associated(ip,kp))print *,'error-12'
end subroutine
end subroutine
call s
print *,'pass'
end
 function jf()
  jf=1
 end function
