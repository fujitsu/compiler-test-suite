subroutine s1
associate(ppp=>iii)
!$omp parallel num_threads(ppp)
!$omp end parallel
end associate
end
print *,'pass'
end

