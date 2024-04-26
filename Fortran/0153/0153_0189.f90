subroutine s1
character(1) ,save,allocatable::      m3(:)
!$omp threadprivate(m3)

!$omp parallel 
!$omp single
!$omp end single copyprivate(m3)
!$omp end parallel
end subroutine
call s1
print *,'pass'
end
