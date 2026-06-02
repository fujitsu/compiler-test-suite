call test01()
print *,"pass"
end

subroutine test01()
integer arr(10)
arr=1
!$omp parallel
do i=1,1
!$omp task
call sss(arr(i))
!$omp end task
end do
!$omp end parallel
contains
subroutine sss(iiii)
end subroutine
end 
