!
!
!
call test01()
print *,'pass'
end

subroutine test01()
integer*1 a(10)
integer*2 j
equivalence (i,a(1))
equivalence (a(3),j)
j=1
do i=1,10
 j=1
end do
j=1
end
