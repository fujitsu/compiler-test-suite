type xxx
 integer,dimension(64)::a, b
end type
type(xxx) x
integer err

x%b = (/(i,i=1,64)/)

!$omp parallel do
do ii=1, 32
  x%a(ii:ii+32) = x%b(ii:ii+32)
end do
!$omp end parallel do

err = 0
do i=1, 64
  if(x%a(i) .ne. i) err = err+1
end do

if(err .ne. 0) then
  print *, 'NG'
else
  print *, 'pass'
end if

end

