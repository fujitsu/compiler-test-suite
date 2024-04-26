integer :: a(10)
a=1
call sub(+a)
print *,'pass'
contains
subroutine sub(aa)
integer ::aa(10),bb(10)
bb=aa
bb=bb
end subroutine
end
