subroutine zz
interface 
 subroutine sub
 end subroutine 
end interface
procedure(sub),pointer :: p
type xx
  integer ::xx1
  procedure(sub),pointer,nopass :: p
end type
type(xx)::vv
type(xx)::vt(2)
integer n
common /x/ n
p=>sub
call q(p)
if (n/=1)print *,'error-2'
vv%p=>p
call q(vv%p)
if (n/=2)print *,'error-3'
call q(f())
if (n/=3)print *,'error-4'
k=1
vt(k+1)%p=>p
call q(vt(k+1)%p)
if (n/=4)print *,'error-5'

contains
function f() result(r)
interface 
 subroutine sub
 end subroutine 
end interface
procedure(sub),pointer :: r
r=>sub
end function

subroutine q(p)
interface 
 subroutine p
 end subroutine 
end interface
integer n
common /x/ n
call p
end subroutine
end
 subroutine sub
 common /x/ n
 n=n+1
 end subroutine 
 blockdata
 common /x/ n
 data n/0/
 end

call zz
print *,"pass"
end
