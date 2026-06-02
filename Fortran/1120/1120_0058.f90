call test01()
print *,"pass"
end

subroutine test01()
integer arr(10)
arr=1
!$omp parallel
do i=1,1
if (1.eq.2) then
!$omp task if(1.eq.2)
call sss(arr(i))
!$omp end task
!$omp task untied
call sss(arr(i))
!$omp end task
!$omp task default(private)
call sss(arr(i))
!$omp end task
!$omp task default(firstprivate)
call sss(arr(i))
!$omp end task
!$omp task default(shared)
call sss(arr(i))
!$omp end task
!$omp task default(none) shared(arr,i)
call sss(arr(i))
!$omp end task
!$omp task firstprivate(arr,i)
call sss(arr(i))
!$omp end task
!$omp task private(arr,i)
call sss(arr(i))
!$omp end task
endif
end do
!$omp end parallel
end 
subroutine sss(ii)
i=ii
i=i
end subroutine
