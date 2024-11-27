subroutine sub
entry ent1(p)
dimension p(:)
intent(inout)::p
pointer::p
integer p
allocate(p(2))
p=(/1,2/)
end subroutine
interface
subroutine ent1(p)
pointer::p
dimension p(:)
intent(inout)::p
integer p
end subroutine
end interface

pointer::p
dimension p(:)
integer p
call ent1(p)
if (any(p/=(/1,2/)))write(6,*) "NG"
print *,'pass'
end
