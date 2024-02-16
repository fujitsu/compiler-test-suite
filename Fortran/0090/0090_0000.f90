!
module sub_mod
intrinsic kind
integer, parameter :: size = kind(0.0)
integer, parameter :: N = 100
real(size),dimension(N) :: array = (/(mod(i,10), i=1,N)/)
integer, parameter :: S = 5
integer, parameter :: ANS = 4627

contains
!
subroutine ini(data)
integer  :: data
integer, save :: val = 0
data = val + S
val  = val + N - 2 * S
end subroutine ini
end module sub_mod

!
program main
use sub_mod
integer  :: start, last
integer  :: res

call ini(start)
call ini(last)
call sub(array,start,last)
array(start+1:last+start) = array(start:last+start-1) + 1.
res = int(sum(array))
if (res == ANS) then
  print *, "OK"
else
  print *, "NG", res
endif

contains
!
subroutine sub(array,st,lt)
real(size),dimension(N) :: array,b, c
integer :: st, lt

b = (/(i,i=1,N)/)
c = (/(mod(i,2),i=1,N)/)
array(st+1:st+lt) = b(st:lt+st-1) + array(st+1:st+lt) + c(st-1:st+lt-2)
array(st+1:lt+st) = b(1:lt) + c(st:st+lt-1)

end subroutine sub

end program main
