integer,parameter :: N=3
integer :: x(N,N,N)
integer :: i,j,k

!$OMP PARALLEL DO
do i=1,N
  do j=1,N
    do k=1,N
     x(i,j,k)=100*k+10*j+i
    end do
  end do
end do
!$OMP END PARALLEL DO
print *,"pass"

call sub(x)
end

subroutine sub(x)
integer,parameter :: N=3
integer :: x(N**N)
end

