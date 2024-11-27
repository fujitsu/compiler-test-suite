subroutine sub
entry ent1(p)
integer,pointer::p
dimension p(:)
intent(out)::p
allocate(p(2))
p=(/1,2/)
end subroutine
interface
subroutine ent1(p)
integer,pointer::p
dimension p(:)
intent(out)::p
end subroutine
end interface

pointer::p
integer p
dimension p(:)
call ent1(p)
if (any(p/=(/1,2/)))write(6,*) "NG"
print *,'pass'
end




