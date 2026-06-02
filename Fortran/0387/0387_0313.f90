subroutine s
 implicit character(2)(a-z)
interface
 function nf()
 implicit character(2)(a-z)
 end function
end interface
procedure (nf), pointer :: ip
ip=> kf()
call ss(ip,'1',1)
call ss(kf(),'1',1)
call ss(null(),'1',0)
contains
subroutine ss(kp,c,n)
implicit character(2)(a-z)
character(*) c
integer::n
interface
 function nf()
 implicit character(2)(a-z)
 end function
end interface
procedure (nf), pointer :: kp
if (len(c)/=1)print *,'error-7'
if (c/='1')print *,'error-8'
if (n==0) then
  if (associated(kp))print *,'error-61'
else
  if (.not.associated(kp))print *,'error-62'
  if (kp()/='12')print *,'error-31'
end if
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
