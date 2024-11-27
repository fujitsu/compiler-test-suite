integer,dimension(64):: a, b
integer,dimension(33):: sum

b = (/(i,i=1,64)/)

!$omp parallel do private(sum)
do i=1, 32
  sum = b(i:i+32)
  a(i:i+32) = sum
end do
!$omp end parallel do

err = 0
do i=1, 64
  if(a(i) .ne. i) err = err+1
end do

if(err .ne. 0) then
  print *, 'NG'
else
  print *, 'pass'
endif

end

