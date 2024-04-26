type ty     
integer :: b(3)=5
integer :: d=10
real :: f=15
end type

type(ty) :: obj
associate( c => obj%d, a=>obj%b(2:3))
!$omp parallel 
!$omp sections lastprivate(obj)
associate(e=>obj%f)
!$omp parallel 
!$omp sections lastprivate(obj)
 obj%b=7
 obj%d=8
 obj%f=9
 if(e .ne. 15)print*,"104",e
 !$omp end sections
 !$omp end parallel
end associate
if(a(1) .ne. 7)print*,"101",a(1)
if(a(2) .ne. 7)print*,"102",a(2)
if(c .ne. 8)print*,"103",c
 !$omp end sections
!$omp end parallel
print*, "pass"
end associate
end program


