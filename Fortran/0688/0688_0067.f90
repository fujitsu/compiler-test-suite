real,pointer:: a
real,external,pointer:: a1
procedure(),pointer:: a2
real,dimension(100):: b

!$omp parallel do firstprivate(a)
do i=1,100
b(i) = i
end do
!$omp end parallel do
!$omp parallel
!$omp task firstprivate(a1)
!$omp end task
!$omp end parallel
!$omp parallel do firstprivate(a2)
do i=1,100
b(i) = i
end do
if (b(100).ne.100) print *,"fail"
print *,'pass'
end
