integer::a(4)
call sub(a)
print*,"PASS"
contains
subroutine sub(d)
class(*),optional::d(4)
if(present(d) .neqv. .true.)print*,101
end subroutine

end
