Module m
type ty     
 integer :: v(3)
end type
end module

use m
type(ty) :: obj
obj%v(2)=7
obj%v(3)=8
associate(u => obj%v(2:3))
!$omp parallel 
!$omp sections firstprivate(obj)
 obj%v=3
 if(u(1) .ne. 7)print*,"101"
 if(u(2) .ne. 8)print*,"102"
!$omp end sections
!$omp end parallel
end associate
print*,"pass"
end program


