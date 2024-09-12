module m
contains
subroutine s1()
type z2(p1)
 integer,kind::p1
 integer :: i = 3
 integer::x1(p1)=[1,2]
 integer :: j = 2
end type
type(z2(2))::obj
if(obj%i .EQ. 3 .and. obj%x1(2) .eq. obj%j)then
print*,'PASS'
else
print*,'FAIL'
endif
end subroutine
end module

use m
call s1
end

