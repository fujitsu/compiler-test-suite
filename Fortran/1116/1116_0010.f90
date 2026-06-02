real(16)::a(2),b(2),c(2)
!$omp parallel
do k=1,2
!$omp  task depend(out:a(k),b(k),c(k))
!$omp  end task

!$omp  task depend(inout:a(k)) depend(inout:b(k),c(K))
!$omp  end task

!$omp  task depend(in:a(k),b(k),c(k))
!$omp  end task
enddo 
!$omp end parallel
print *,'pass'
end
