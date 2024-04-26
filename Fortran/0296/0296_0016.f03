use iso_c_binding
call sss1
call sss2
call sss3
print *,'pass'
contains
subroutine sss1
integer,pointer::p1
integer,pointer::p2(:)
allocate(p1,p2(2))
if(c_sizeof(p1)/=sizeof(p1)) print *,'err1'
if(c_sizeof(p2)/=sizeof(p2)) print *,'err2'
end subroutine
subroutine sss2
integer,allocatable::p1
integer,allocatable::p2(:)
allocate(p1,p2(2))
if(c_sizeof(p1)/=sizeof(p1)) print *,'err3'
if(c_sizeof(p2)/=sizeof(p2)) print *,'err4'
end subroutine
end
subroutine sss3
use iso_c_binding
integer,pointer::p2(:)
allocate(p2(5))
i=2
if(c_sizeof(p2(1:5:i))/=sizeof(p2(1:5:i))) print *,'err5'
call sss(p2(1:5:i))
contains
subroutine sss(p2)
integer::p2(:)
if(c_sizeof(p2)/=sizeof(p2)) print *,'err6'
end subroutine
end


