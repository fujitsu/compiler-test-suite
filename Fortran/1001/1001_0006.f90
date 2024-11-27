integer a(10,10)
integer b(10,10)
!$OMP parallel do lastprivate(a) private(b)
do i=1,1
a=1
end do
!$OMP endparallel do
!$OMP parallel do private(a) lastprivate(b)
do i=1,1
a=1
end do
!$OMP endparallel do
!$OMP parallel do lastprivate(b) private(a)
do i=1,1
a=1
end do
!$OMP endparallel do
!$OMP parallel do private(b) lastprivate(a)
do i=1,1
a=1
end do
!$OMP endparallel do
end
