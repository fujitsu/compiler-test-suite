type ty
integer:: i(2)
integer:: m(2)
end type
type(ty)::tp
tp%i=0
j1=1
j2=1
!$omp do
do k=1,4
!$omp atomic update
   tp%i(1)=max(tp%i(1),j1,j2,k)
enddo
!$omp do
do k=4,1,-1
   !$omp atomic capture
   tp%m(1)=tp%i(1)
   tp%i(1)=min(j1,j2,tp%i(1),k)
   !$omp end atomic
enddo

!$omp do
do k=1,4,1
   !$omp atomic capture
   tp%i(1)=min(j1,j2,tp%i(1),k)
   tp%m(1)=tp%i(1)
   !$omp end atomic
enddo
print *,'pass'
end
