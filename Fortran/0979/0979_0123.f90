subroutine sub
entry ent1(p)
integer,pointer,intent(out)::p
allocate(p)
p=2
end subroutine
interface
subroutine ent1(p)
integer,pointer,intent(out)::p
end subroutine
end interface
integer p
pointer::p
call ent1(p)
if (p/=2)write(6,*) "NG"
print *,'pass'
end
