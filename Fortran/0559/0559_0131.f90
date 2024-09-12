Module m
contains    
subroutine s1()
type z1(p1)
  integer,kind::p1
  integer::x1(p1)=1
 end type
 
type z2(p1)
 integer,kind::p1
 integer::x1(p1)=[2,2]
end type
type(z2(2))::obj
if(all(obj%x1 .eq. 2))then
print*,'PASS'
else
print*,'FAIL'
endif
end subroutine
end module

use m
call s1
end

