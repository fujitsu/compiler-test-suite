module m
contains
subroutine s1()
type z2(p1)
 integer,kind::p1
 integer :: i(2) = [1,2]
 integer :: j = 2
 integer::x1(p1)=[2,2],x(p1) = [4,4]
end type
type(z2(2))::obj
if(obj%i(2) .EQ. 2 .and. all(obj%x1 .eq. obj%j) .and. all(obj%x .eq. 4))then
print*,'PASS'
else
print*,'FAIL'
endif
end subroutine
end module

use m
call s1
end

