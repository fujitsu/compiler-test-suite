character(2)::a,b(2)
i=1
!$omp parallel
do k=1,1
!$omp  task depend(out:a(k:i))
!$omp  end task

!$omp task depend(inout:b(k:i)(k:i))
!$omp end task 

!$omp task depend(out:b(k:i)(k:i))
!$omp end task 
enddo
!$omp end parallel
print *,'pass'
end
