subroutine s1
integer a(2)
associate (p=> a(2))
!$omp parallel private(a)
!$omp end parallel
end associate
end
call s1
print *,'pass'
end
