common /com/a(1)
!$omp parallel firstprivate(k)
k=1
!$omp  task depend(out:a(k))
!$omp  task depend(out:a(k)) firstprivate(a) private(k)

!$omp  end task
!$omp  end task
!$omp end parallel
print *,'pass'
end
