integer :: a,b,c,d
common/com/a,b,c,d
!$omp parallel do firstprivate(/com/) lastprivate(a)
  do i = 1,1
    a=b
    c=d
  end do
!$omp end parallel do
end

