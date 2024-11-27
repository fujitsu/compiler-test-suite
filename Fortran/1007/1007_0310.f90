module xxx
  type yyy
    integer a
    integer b
  end type
end module

use xxx
type(yyy) sum
type(yyy),target:: sum2
type(yyy),pointer:: y
integer,dimension(256):: a
integer,dimension(256):: b
integer err

sum2 = yyy(1,2)

!$omp parallel do private(sum)
do i=1, 256
  y => sum2
  sum = y
  a(i) = sum%a+i
  b(i) = sum%b+i
end do
!$omp end parallel do

err = 0
do i=1, 256
  if(a(i) .ne. i+1) err = err+1
  if(b(i) .ne. i+2) err = err+1
end do

if(err .ne. 0) then
  print *, 'NG'
else
  print *, 'pass'
endif

end

