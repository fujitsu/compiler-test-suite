module mod
integer :: i[1:*]
contains
subroutine sub1_1()
save i
i=i
end subroutine
end

subroutine sss()
use mod
call sub1_1()
end
print *,'pass'
end
