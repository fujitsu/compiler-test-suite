call test01()
print *,'pass'
end
subroutine test01()
integer a(10)
!$OMP parallel private(a,b,c)
do i=1,10
end do
!$OMP end parallel
end

