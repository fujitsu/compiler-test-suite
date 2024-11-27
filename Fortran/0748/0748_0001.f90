subroutine s1
associate(ppp=>iii)
!$omp parallel if(ppp <0)
!$omp end parallel
end associate
end
print *,'pass'
end

