Module m     
contains
subroutine s()
integer :: v(3)
v(1) = 15
v(2) = 16
v(3) = 17
associate(u => v(2:3))
    if( u(1) .ne. 16)print*,"104"
    if( u(2) .ne. 17)print*,"105"
 !$omp parallel private(v)   
    v = -1
    if(size(u) .ne. 2)print*,"103"
    if( u(1) .ne. 16)print*,"101"
    if( u(2) .ne. 17)print*,"102"
   !$omp end parallel
print*,"pass"
end associate
end subroutine
end module

use m
call s()
end program


