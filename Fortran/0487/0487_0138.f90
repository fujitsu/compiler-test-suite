subroutine s1
integer,save:: a(2)
!$omp threadprivate(a)
associate (p=> a(2))
!$omp parallel copyin(a)
!$omp end parallel
end associate
end
call s1
print *,'pass'
end
