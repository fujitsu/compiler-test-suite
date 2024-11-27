module xxx
  integer,dimension(256):: a, b
  integer sum
contains

subroutine sub()
!$omp parallel do private(sum)
do i=1, 256
  if(mod(i,4) .eq. 0) then
    sum = 1
  else if(mod(i,4) .eq. 1) then
    sum = 2
  else if(mod(i,4) .eq. 2) then
    sum = 3
  else if(mod(i,4) .eq. 3) then
    sum = 4
  endif
  a(i) = sum+i
end do
!$omp end parallel do
end subroutine 
end module

use xxx
integer err

call sub()

do i=1, 256
  if(mod(i,4) .eq. 0) then
    sum = 1
  else if(mod(i,4) .eq. 1) then
    sum = 2
  else if(mod(i,4) .eq. 2) then
    sum = 3
  else if(mod(i,4) .eq. 3) then
    sum = 4
  endif
  b(i) = sum+i
end do

err = 0
do i=1, 256
  if(a(i) .ne. b(i)) err = err+1
end do

if(err .ne. 0) then
  print *, 'NG'
else
  print *, 'pass'
endif

end

