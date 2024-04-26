type ty     
integer :: b(3)=5
integer :: d=10
real :: f=15
end type

type(ty) :: obj
associate( c => obj%d, a=>obj%b(2:3))
!$omp parallel 
!$omp sections firstprivate(obj)
associate(e=>obj%f)
!$omp parallel 
!$omp sections firstprivate(obj)
 obj%b=7
 obj%d=8
 obj%f=9
 if(e .ne. 15)print*,"104",e
 !$omp end sections
 !$omp end parallel
end associate
if(a(1) .ne. 5)print*,"101"
if(a(2) .ne. 5)print*,"102"
if(c .ne. 10)print*,"103",c
 !$omp end sections
!$omp end parallel
print*, "pass"
end associate
end program


