subroutine sub
entry ent1(p)
entry ent2(p)
dimension p(:)
integer,pointer,intent(out)::p
allocate(p(2))
p=(/1,2/)
end subroutine
interface
subroutine ent1(p)
integer,pointer,intent(out)::p
dimension p(:)
end subroutine
subroutine ent2(p)
integer,pointer,intent(out)::p
dimension p(:)
end subroutine
end interface

integer p1,p2
pointer::p1,p2
dimension p1(:),p2(:)
call ent1(p1)
if (any(p1/=(/1,2/)))write(6,*) "NG"
call ent2(p2)
if (any(p2/=(/1,2/)))write(6,*) "NG"
print *,'pass'
end
