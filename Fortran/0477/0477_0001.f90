program main
implicit none
integer,parameter::N=100
integer::j=0
integer::i=0
!$omp parallel do schedule(static) ordered
do i = 1, N
!$omp atomic
   j = j + 1
!$omp end atomic
end do
!$omp end parallel do
if(j==100) then
print *,'pass'
else
print *,j
endif
end
