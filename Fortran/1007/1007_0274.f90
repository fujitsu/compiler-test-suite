type xxx
  integer a(128), b(128), c(128), d(128)
end type
type(xxx) x
integer err

x%a = (/(i,i=1,128)/)
x%b = (/((i*(i+1))/2,i=1,128)/)
x%c = 0

!$omp parallel do private(sum)
do i=1, 128
  x%c(i) = x%b(i)-x%a(i)
  sum = x%b(i)+x%a(i)
  x%a(i) = sum
  x%c(i) = x%c(i)+sum
end do
!$omp end parallel do

do i=1, 128
  x%d(i) = x%b(i)-x%a(i)
  sum = x%b(i)+x%a(i)
  x%a(i) = sum
  x%d(i) = x%d(i)+sum
end do

err = 0
do i=1, 128
  if(x%c(i) .ne. x%d(i)) err = err+1
end do

if(err .ne. 0) then
   print *, 'NG'
else
   print *, 'pass'
endif

end
