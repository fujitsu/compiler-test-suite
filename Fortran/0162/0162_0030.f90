subroutine sub()
pointer (i,j)
k=1
!$omp parallel default(none) shared(k,i)
i=loc(k)
!$omp end parallel
end
print *,'pass'
end
