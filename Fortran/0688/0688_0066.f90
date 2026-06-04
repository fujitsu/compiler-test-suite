integer:: i(2)
integer:: m(2)
i=0
j1=1
j2=1
!$omp do
do k=1,4
!$omp atomic update
   i(1)=max(i(1),j1,j2,k)
enddo
!$omp do
do k=4,1,-1
   !$omp atomic capture
   m(1)=i(1)
   i(1)=min(j1,j2,i(1),k)
   !$omp end atomic
enddo

!$omp do
do k=1,4,1
   !$omp atomic capture
   i(1)=min(j1,j2,i(1),k)
   m(1)=i(1)
   !$omp end atomic
enddo
print *,'pass'
end
