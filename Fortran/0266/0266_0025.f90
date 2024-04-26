module m1

contains
subroutine sub()
integer,allocatable :: arr(:)
integer::count=0

allocate(arr(3))
arr = 0

d1:do i = 1,4
 d2:do j = 1,i+1
  i1:if (i == j) then
   count = count + 1
   arr = i
   exit i1
  else
   arr = 2
  endif i1
 end do d2
end do d1

if(count /= 4) print*, 103, count
end subroutine
end module

use m1
call sub()
print*, "PASS"
end
