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
function ff() result(p)
implicit character(a-z)
procedure(sub),pointer :: p
p=>sub
end function
end
use m1
implicit complex(a-z)
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
if (.not.associated(p))print *,101
if (.not.associated(w%p))print *,102
if (.not.associated(ff()))print *,103
if (.not.associated(rr ))print *,104
if (.not.associated(v%rr))print *,107

print *,'pass'
end

