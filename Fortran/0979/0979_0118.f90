subroutine sub
entry ent1(p)
integer,pointer,dimension(:),intent(inout)::p
allocate(p(2))
p=(/1,2/)
end subroutine
interface
subroutine ent1(p)
integer,pointer,dimension(:),intent(inout)::p
end subroutine
end interface
integer p
pointer::p
dimension p(:)
call ent1(p)
if (any(p/=(/1,2/)))write(6,*) "NG"
print *,'pass'
end




