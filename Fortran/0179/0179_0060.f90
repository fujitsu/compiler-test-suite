type ty1
integer a(10)
end type
type( ty1) ::s(10)
integer a(10)
a=1
do i=1,10
s(i)%a=1
end do
i=1
call sub1_1(s%a(1))
call sub1_1(s(1:10)%a(1))
call sub1_1(s(a)%a(1))
call sub1_1(s(1)%a)
call sub1_1(s(1)%a(1:10))
call sub1_1(s(1)%a(a))
print *,'pass'
contains
subroutine sub1_1(a)
integer a(*)
end subroutine
end
