module m1
contains
subroutine sub
integer,intent(inout),pointer::p
dimension p(:)
entry ent1(p)
allocate(p(2))
p=(/1,2/)
end subroutine
end

use m1
integer,pointer::p
dimension p(:)
call ent1(p)
if (any(p/=(/1,2/)))write(6,*) "NG"
print *,'pass'
end