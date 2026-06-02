type ty
integer:: i
integer:: m
end type
type(ty)::tp
tp%i=0
j1=1
j2=1
do k=1,4
!$omp atomic update
   tp%i=max(tp%i,j1,j2,k)
enddo
!$omp do
do k=4,1,-1
   !$omp atomic capture
   tp%m=tp%i
   tp%i=min(j1,j2,tp%i,k)
   !$omp end atomic
enddo

!$omp do
do k=1,4,1
   !$omp atomic capture
   tp%i=min(j1,j2,tp%i,k)
   tp%m=tp%i
   !$omp end atomic
enddo
print *,'pass'
end
