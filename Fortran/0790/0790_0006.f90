module moda
integer,save :: i[1:*]
private :: i
contains
subroutine sub1_1()
call sub()
contains
subroutine sub()
end subroutine
end subroutine
end

use moda
call sub1_1()
print *,'pass'
end
