type xxx
  integer,dimension(256):: a, b, c
end type
type(xxx) x
integer err

x%c = 0

!$omp parallel do
do ii=1, 256
  x%a(ii) = ii
  x%b(ii) = ii*(ii+1)/2
  x%c(ii) = x%c(ii)-x%a(ii)+x%b(ii)+ii
end do
!$omp end parallel do

err = 0
do i=1, 256
  if(x%c(i) .ne. i*(i+1)/2) err = err+1
  if(x%b(i) .ne. i*(i+1)/2) err = err+1
  if(x%a(i) .ne. i) err = err+1
end do

if(err .ne. 0) then
  print *, 'NG'
else
  print *, 'pass'
endif

end

