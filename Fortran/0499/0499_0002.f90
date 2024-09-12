integer ,parameter :: i1=1
associate(i1=>i)
!$OMP parallel do collapse(1)
  do i2=1,2
  end do
!$OMP END parallel do
!$OMP parallel do collapse(1) ordered(1)
  do i2=1,2
  end do
!$OMP END parallel do
end associate
print*,'pass'
end
