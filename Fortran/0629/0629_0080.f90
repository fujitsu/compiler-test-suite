integer err, sum
!$omp parallel do private(sum)
do i=1, 2
end do
!$omp end parallel do

sum = 1
err = 2
do i=1, 2
  sum = sum+1
end do

do i=1, 2
  err = err+1
end do
write(6,*) sum,err
end
