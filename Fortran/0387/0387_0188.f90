module m1
contains
subroutine sub5()
entry     sub6
end subroutine
subroutine xx

procedure (sub6), pointer :: p6

p6=>sub6
if (.not.associated(p6,sub6))print *,'error-61'
end subroutine
end

module m2
contains
subroutine sub5()
entry     xyz6
end subroutine
subroutine yy
call tt(xyz6)

end subroutine
end
subroutine tt(x)
external x
end
use m1
use m2
call xx
call yy
print *,'pass'
end
