integer::a(1)=0
!$omp threadprivate(j)
!$omp parallel firstprivate(k)
k=1
j=1
!$omp  task depend(out:a(j:k))
!$omp  end task

!$omp  task depend(out:a(k:j))
!$omp  end task

!$omp  task depend(out:a(j:k))
!$omp  task depend(out:a(k:j))
!$omp  end task

!$omp  end task

!$omp end parallel
print *,'pass'
end
