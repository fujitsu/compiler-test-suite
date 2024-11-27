integer,pointer :: a,b,c,d
common/com/a,b,c,d
!$omp parallel do firstprivate(/com/) lastprivate(a)
  do i=1,2
  end do
!$omp end parallel do
end
