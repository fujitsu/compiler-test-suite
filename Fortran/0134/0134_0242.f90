subroutine zz
interface 
 subroutine sub
 end subroutine 
end interface
type xx
  integer ::xx1
  procedure(sub),pointer,nopass :: p
end type
procedure(sub),pointer :: p
p=>sub
call       zx(p,2)
call       zx(k=1)
contains
subroutine zx(p,k)
procedure(sub),optional,pointer :: p
integer n
common /x/ n
if (present(p)) then
if (k/=2) print *,1001,k
p=>sub
call q(p,k)
else
call q(p,k)
if (k/=1) print *,1002,k
endif
end subroutine

subroutine q(p,k)
interface 
 subroutine s
 end subroutine 
end interface
procedure(s),pointer::p
optional::p
integer n
common /x/ n
if (present(p)) then
if (k/=2) print *,2001,k
call p
else
if (k/=1) print *,2002,k
endif
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
