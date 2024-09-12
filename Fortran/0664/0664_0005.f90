integer :: x(10)
call sub(x)
print *,"pass"
end

subroutine sub(x)
integer :: x(3,3)
integer :: i,j

!$OMP PARALLEL DO
do i=1,3
  do j=1,3
    x(i,j)=10*i+j
  end do
end do
!$OMP END PARALLEL DO
end
