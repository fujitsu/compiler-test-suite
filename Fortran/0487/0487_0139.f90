iii=1
associate(ppp=>iii)
!$omp task final(ppp <0)
!$omp end task
end associate
print *,'pass'
end
