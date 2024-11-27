module moda
integer :: i[1:*]
private :: i
end

subroutine sub1_1()
use moda
end subroutine

call sub1_1()
print *,'pass'
end
