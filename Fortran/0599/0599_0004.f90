!$omp parallel default(none) private(i)
forall (i=1:10)
end forall
i=200
!$omp end parallel
print *,'pass'
end
