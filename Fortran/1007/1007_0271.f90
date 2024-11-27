real,dimension(256):: a, b, c
integer err
common /blk/ a, b
!$omp threadprivate(/blk/)

a = (/(i,i=1,256)/)
b = (/(i*(i+1)/2,i=1,256)/)
c = 0

!$omp parallel do private(sum), copyin(/blk/)
do i=1, 256
  sum = i
  call sub(sum, i, c(i))
end do
!$omp end parallel do

err = 0
do i=1, 256
  if(c(i) .ne. b(i)) err = err+1
end do

if(err .ne. 0) then
  print *, 'NG'
else
  print *, 'pass'
end if

end

subroutine sub(sum, i, c)
real,dimension(256):: a, b
common /blk/ a, b
real c
!$omp threadprivate(/blk/)

c = b(i)-a(i)+sum
end

