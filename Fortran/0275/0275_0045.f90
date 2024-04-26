type ty     
 integer :: v(2)
end type
type(ty) :: obj
obj%v(2)=7
associate(u => obj%v(2))
!$omp parallel private(obj)
 obj%v=3
 if(u .ne. 7)print*,"101"
!$omp end parallel
print*,"pass"
end associate
end program


