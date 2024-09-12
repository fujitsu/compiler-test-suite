module m1
implicit character(a-z)
procedure(sub),pointer :: rr
type x
 integer::v
 procedure(sub),nopass,pointer :: rr
end type
type(x)::v
contains
subroutine sub
end subroutine
function f() result(r)
implicit character(a-z)
procedure(sub),pointer :: r
r=>sub
end function
end
use m1
implicit complex(a-z)
integer ::k
procedure(sub),pointer :: p
type y
 integer::v
 procedure(sub),pointer,nopass :: p
end type
type(y)::w
p=>sub
rr=>sub
v%rr=>sub
w%p=>sub

k=0
if (.not.associated(p   ,f()))k=k+1
if (.not.associated(w%p ,f()))k=k+1
if (.not.associated(p   ,rr))k=k+1
if (.not.associated(w%p ,rr))k=k+1

if (k/=0)print *,k
print *,'pass'
end
