common /com01/ i01,j01
integer arr(2)
equivalence (i01,arr)
!$omp parallel private(/com01/)
i01=1
i02=2
arr=2

!$omp atomic capture
 j01=i01
 i01=max(1,0_4)
!$omp end atomic

!$omp atomic capture
 j01=i01
 i01=max(0_4,1)
!$omp end atomic
!$omp atomic capture
 j01=i01
 i01=min(0_4,i01)
!$omp end atomic
!$omp atomic capture
 j01=i01
 i01=min(i01,0_4)
!$omp end atomic

!$omp atomic capture
 arr(2)=arr(1)
 arr(1)=max(1,0_4)
!$omp end atomic

!$omp atomic capture
 arr(2)=arr(1)
 arr(1)=max(0_4,arr(1))
!$omp end atomic

!$omp atomic capture
 arr(2)=arr(1)
 arr(1)=min(0_4,arr(1))
!$omp end atomic
!$omp atomic capture
 arr(2)=arr(1)
 arr(1)=min(arr(1),0_4)
!$omp end atomic

!$omp end parallel
print *,'pass'
end program
