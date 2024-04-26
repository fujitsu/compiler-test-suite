call a1
print *,'pass'
contains
subroutine a1
use iso_c_binding
call s1(1_1)
call s2(1_2)
call s3(1_4)
call s4(1_8)
end subroutine
subroutine s1(a)
use iso_c_binding
integer(1),value::a
integer(1),parameter::b=sizeof(1_1)
if(b/=c_sizeof(a)) print *,'err1'
end subroutine
subroutine s2(a)
use iso_c_binding
integer(2),value::a
integer(2),parameter::b=sizeof(1_2)
if(b/=c_sizeof(a)) print *,'err2'
end subroutine
subroutine s3(a)
use iso_c_binding
integer(4),value::a
integer(4),parameter::b=sizeof(1_4)
if(b/=c_sizeof(a)) print *,'err3'
end subroutine
subroutine s4(a)
use iso_c_binding
integer(8),value::a
integer(8),parameter::b=sizeof(1_8)
if(b/=c_sizeof(a)) print *,'err4'
end subroutine
end
