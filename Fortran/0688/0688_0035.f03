do concurrent(i=1:3,.true._2)
!$omp parallel firstprivate(i)
k=i
!$omp end parallel
end do
print *,'pass'
end
