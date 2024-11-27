integer a(128), b(128), c(128), d(128)
integer err

a = (/(i,i=1,128)/)
b = (/((i*(i+1))/2,i=1,128)/)
c = 0

!$omp parallel do private(sum) if(.true.)
do i=1, 128
  c(i) = b(i)-a(i)
  sum = b(i)+a(i)
  a(i) = sum
  c(i) = c(i)+sum
end do
!$omp end parallel do

do i=1, 128
  d(i) = b(i)-a(i)
  sum = b(i)+a(i)
  a(i) = sum
  d(i) = d(i)+sum
end do

err = 0
do i=1, 128
  if(c(i) .ne. d(i)) err = err+1
end do

if(err .ne. 0) then
   print *, 'NG'
else
   print *, 'pass'
endif

end
