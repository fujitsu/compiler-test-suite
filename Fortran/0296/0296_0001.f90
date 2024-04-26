use iso_c_binding,only:aaa=>c_sizeof,c_float
real(c_float)::a
real(c_float)::b(5)
a=1; b=2
if (aaa(a).ne. 4)  call errtra 
if (aaa(b).ne. 20) call errtra
call sub
call sub1
print *,'pass'
end

module mod
use iso_c_binding,only:bbb=>c_sizeof
end module

subroutine sub
use mod,ccc=>bbb
integer,parameter:: c_float=4
real(c_float)::a
real(c_float)::b(5)
a=1; b=2
if (ccc(a).ne. 4)  call errtra 
if (ccc(b).ne. 20) call errtra
end subroutine

subroutine sub1
use iso_c_binding
type(c_ptr)::a
type(c_ptr)::b(5)
if (c_sizeof(a).ne. 8)  call errtra 
if (c_sizeof(b).ne. 40)  call errtra 
end subroutine
