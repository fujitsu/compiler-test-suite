Module m
contains
 subroutine s1()
 type z2(p1)
  integer,kind::p1
  integer::x1(p1) = [2,4],x(p1)=[1,2]
 end type
type(z2(2))::obj

if(obj%x1(1) .EQ. 2 .and. obj%x1(2) .eq. 4 .and. obj%x(1) .eq. 1 .and. obj%x(2) .eq. 2 )then
print*,'PASS'
else
print*,'FAIL'
endif
end subroutine
end module
use m
call s1
end

