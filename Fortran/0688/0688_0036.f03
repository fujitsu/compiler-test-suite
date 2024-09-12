do concurrent(i=1:3,.true._4)
!$omp parallel do lastprivate(i)
do j=1,1
k=i
end do
!$omp end parallel do
end do
print *,'pass'
end
