integer::a,b
a=2
b=a
call sub(b)
print*,"PASS"
contains
subroutine sub(d1,d2)
class(*),optional::d1,d2
if(present(d1) .neqv. .true.)print*,101
if(present(d2) .neqv. .false.)print*,101
end subroutine

end
