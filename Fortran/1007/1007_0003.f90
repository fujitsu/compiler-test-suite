module mod
  integer :: i,j,go=0,ii
  integer,parameter :: N=5
  integer,dimension(N,N) :: a,b=0,sum
end module mod

subroutine sub1
  use mod
  a(:,:) = 2
!$OMP parallel do
  do ii=1,N
     sum(:,:) = 3
     do j=1,N
        do k=1,N
           b(ii,j) = b(ii,j) + a(k,j)*sum(j,k)
        end do
     end do
  end do
!$OMP end parallel do
end subroutine sub1

subroutine sub2
  use mod
  do i=1,N
     do j=1,N
     if(b(i,j) /= 30) then
        write(6,*) "NG"
     end if
     go = go + b(i,j)
     end do
  end do
  write(*,*)go,"'ok'"
end subroutine sub2

program main
  call sub1()
  call sub2()
end program main


