module m1

integer::counter = 0
interface
subroutine sub()
end subroutine
end interface
end module

subroutine sub()
use m1
integer :: i,j

do j = 1,4
 aa: block
  integer :: bb(j+1)
   do i=1,j+1
    bb(i) = i+1

    cc: block
     integer :: dd(j+2)
     dd(i) = i+2
     counter = counter + 1
     if (i==j) exit aa

     ee: block
     end block ee
    end block cc
   end do
 end block aa
end do

if(counter /= 10)print*,"101"
end subroutine

call sub()
print*,"PASS"
end
