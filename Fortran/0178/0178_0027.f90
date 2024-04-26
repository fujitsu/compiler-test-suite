integer a(10)
do i=1.0,10
a(i)=1
end do
call sub1_1(int(a))
print *,'pass'
contains
subroutine sub1_1(a)
integer a(*)
if (1.eq.2) a(1)=a(1)
end subroutine
end
