call s1
print *,'pass'
contains
subroutine s1
use iso_c_binding
integer array(10)
integer(8), parameter::p=8
structure/str/
integer::i
complex::c
end structure
record /str/ r
character(10,1) c
type d
integer:: array(10)
end type
type(d):: do
if(c_sizeof(array)/=40) print *,'err1'
if(c_sizeof(array(2))/=4) print *,'err2'
if(c_sizeof(p)/=8) print *,'err3'
if(c_sizeof(r.c)/=8) print *,'err5'
if(c_sizeof(c(3:6))/=4) print *,'err6'
if(c_sizeof(c)/=10) print *,'err7'
if(sizeof(do)/=c_sizeof(do%array)) print *,'err8'
end subroutine
end
