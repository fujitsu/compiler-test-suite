type ty     
 integer :: v
end type
type(ty) :: obj
obj%v=5
associate(u => obj%v)
!$omp parallel 
!$omp sections lastprivate(obj)
 obj%v=3
 if(u .ne. 5)print*,"101"
!$omp end sections
!$omp end parallel
print*,"pass"
end associate
end program


