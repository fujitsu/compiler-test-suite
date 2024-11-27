integer a(10,10)
integer b(10,10)
!$OMP parallel firstprivate(a) private(b)
do i=1,1
a=1
end do
!$OMP endparallel 
!$OMP parallel private(a) firstprivate(b)
do i=1,1
a=1
end do
!$OMP endparallel
!$OMP parallel firstprivate(b) private(a)
do i=1,1
a=1
end do
!$OMP endparallel
!$OMP parallel private(b) firstprivate(a)
do i=1,1
a=1
end do
!$OMP endparallel
end
