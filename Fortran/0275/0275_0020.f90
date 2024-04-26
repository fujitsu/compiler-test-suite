Module m     
contains
subroutine s()
integer :: v(3)
v(1) = 15
v(2) = 16
v(3) = 17
associate(u => v(2:3))
 !$omp parallel 
 !$omp sections lastprivate(v)
    v = -1
    if( u(1) .ne. 16)print*,"101"
    if( u(2) .ne. 17)print*,"102"
 !$omp end sections
 !$omp end parallel
print*,"pass"
end associate
end subroutine
end module

use m
call s()
end program


