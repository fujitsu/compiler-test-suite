call test01()
call test02()
call test03()
call test04()
print *,'pass'
end
subroutine test01()
integer(kind=1)   r
!$OMP parallel do
do r=1,10
end do
!$omp end parallel do
end

subroutine test02()
integer(kind=2)   r
!$OMP parallel do
do r=1,10
end do
!$omp end parallel do
end

subroutine test03()
integer(kind=4)   r
!$OMP parallel do
do r=1,10
end do
!$omp end parallel do
end

subroutine test04()
integer(kind=8)   r
!$OMP parallel do
do r=1,10
end do
!$omp end parallel do
end
