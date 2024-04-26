integer a(10)
a=1
call sub1_1(a)
call sub1_1(+a)
call sub1_1((a))
print *,'pass'
contains
subroutine sub1_1(a)
integer a(*)
end subroutine
end
