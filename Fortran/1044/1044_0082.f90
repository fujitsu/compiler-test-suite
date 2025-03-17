subroutine sub
entry ent1(p)
pointer::p
intent(inout)::p
allocate(p)
p=2
end subroutine
interface
subroutine ent1(p)
pointer::p
intent(inout)::p
end subroutine
end interface
pointer::p
call ent1(p)
if (p/=2)write(6,*) "NG"
print *,'pass'
end




