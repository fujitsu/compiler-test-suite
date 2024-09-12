module m
contains
subroutine s1()
type z2(p1)
 integer,kind::p1
 integer :: i(2) = [1,2]
 integer::x1(p1)=[2,2],x(p1) = [4,4]
 integer :: j = 2
 integer::y1(p1)=[3,3],y(p1) = [5,5]
end type
type(z2(2))::obj
if(all(obj%x1 .eq. obj%i(2)) .and. all(obj%y1 .eq. obj%j+1) .and. all(obj%y .eq. obj%x(2) +1 ))then
print*,'PASS'
else
print*,'FAIL',obj%x(2)
endif
end subroutine
end module

use m
call s1
end

