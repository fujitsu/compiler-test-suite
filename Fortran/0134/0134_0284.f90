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
if (.not.associated(f(),p))print *,101
if (.not.associated(f(),w%p))print *,102
if (.not.associated(f(),ff()))print *,103
if (.not.associated(rr ,p))print *,104
if (.not.associated(rr ,w%p))print *,105
if (.not.associated(rr ,ff()))print *,106
if (.not.associated(v%rr,p))print *,107
if (.not.associated(v%rr,w%p))print *,108
if (.not.associated(v%rr,ff()))print *,109

if (.not.associated(p   ,f()))print *,201
if (.not.associated(w%p ,f()))print *,202
if (.not.associated(ff(),f()))print *,203
if (.not.associated(p   ,rr))print *,204
if (.not.associated(w%p ,rr))print *,205
if (.not.associated(ff(),rr))print *,206
if (.not.associated(p, v%rr))print *,207
if (.not.associated(w%p ,v%rr))print *,208
if (.not.associated(ff(),v%rr))print *,209

print *,'pass'
end

