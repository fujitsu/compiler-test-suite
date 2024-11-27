integer :: a,b,c,d
common/com/a,b,c,d
!$omp do lastprivate(/com/) private(/com/)
do i=1,2
end do
!$omp end do
!$omp do private(/com/) lastprivate(/com/)
do i=1,2
end do
!$omp end do
end
