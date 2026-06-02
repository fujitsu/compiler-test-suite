call test01()
print *,"pass"
end

subroutine sss(ii)
i=ii
i=i
end subroutine
subroutine test01()
integer arr(10)
arr=1
i=1
!$omp parallel
!$omp single
do j=1,1
call sss(arr(i))
i=100
end do
!$omp end single
!$omp end parallel
i=1
!$omp task
do j=1,1
!$omp parallel
!$omp single
call sss(arr(i))
i=100
!$omp endsingle
!$omp end parallel
end do
!$omp end task
end 
