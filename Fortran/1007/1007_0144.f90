module mod
  integer :: i,j,go=0
  integer,parameter :: N=3
  integer(1),dimension(N,N) :: a,b=0,sum
end module mod

subroutine sub1
  use mod
  a(:,:) = 2
!$OMP parallel do private(sum)
  do i=1,N
     sum(:,:) = 3
     do j=1,N
        b(i,j) = b(i,j) + a(1,j)*sum(j,1)
        b(i,j) = b(i,j) + a(2,j)*sum(j,2)
        b(i,j) = b(i,j) + a(3,j)*sum(j,3)
     end do
  end do
!$OMP end parallel do
end subroutine sub1

subroutine sub2
  use mod
  do i=1,N
     do j=1,N
     if(b(i,j) /= 18) then
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


