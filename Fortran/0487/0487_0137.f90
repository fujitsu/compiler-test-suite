subroutine s1
integer,save:: a(2)
!$omp threadprivate(a)
associate (p=> a(2))
!$omp single  
!$omp end single copyprivate(a)
end associate
end
call s1
print *,'pass'
end
