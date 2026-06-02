character(:),allocatable::a,b(:)
allocate(a,source="12")
allocate(b(2),source=[character*2::"1","2"])
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
