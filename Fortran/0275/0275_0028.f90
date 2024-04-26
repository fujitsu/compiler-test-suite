type ty     
 integer :: sel(6)
end type

type(ty) :: obj
obj%sel(1:2) = 16
obj%sel(3:4) = 17
obj%sel(5:6) = 18
associate(u => obj%sel(2:6:2))
!$omp parallel 
!$omp sections lastprivate(obj)
obj%sel = 8
if(u(1) .ne. 16)print*,"101"
if(u(2) .ne. 17)print*,"102"
if(u(3) .ne. 18)print*,"103"
!$omp end sections
!$omp end parallel
print*, "pass"
end associate
end program


