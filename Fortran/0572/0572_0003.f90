integer::a,b
a=2
b=a
call sub(a,b)
print*,"PASS"
contains
subroutine sub(d1,d2)
class(*)::d1
type(*)::d2
call sub2(d1,d2)
end subroutine

subroutine sub2(e1,e2)
type(*),optional::e1,e2
if(present(e1).neqv. .true.) print*,102
if(present(e2).neqv. .true.) print*,103
end subroutine

end
