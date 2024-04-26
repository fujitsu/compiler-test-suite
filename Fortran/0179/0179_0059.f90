integer a(10)
a=1
i=1
call sub1_1(int(a))
call sub1_1(a+1)
call sub1_1(a(1:10))
call sub1_1(a(i:10))
call sub1_1((/1,2/))
call sub1_1((/i,2/))
call sub1_1(a(a))
print *,'pass'
contains
subroutine sub1_1(a)
integer a(*)
end subroutine
end
