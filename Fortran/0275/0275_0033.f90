type ty     
 integer :: v(2)
end type
type(ty) :: obj
type(ty) :: obj2
obj%v(2)=7
associate(u => obj%v(2))
!$omp parallel
!$omp sections firstprivate(obj2) ,lastprivate(obj)
 obj%v=3
 if(u .ne. 7)print*,"101"
!$omp end sections
!$omp end parallel
print*,"pass"
end associate
end program


