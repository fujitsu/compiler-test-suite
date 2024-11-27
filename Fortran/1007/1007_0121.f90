module mod
  integer :: i,j,go=0
  integer,parameter :: N=3
  integer,dimension(N,N) :: a,b=0,sum
end module mod

subroutine sub1
  use mod
  a(:,:) = 2
!$OMP parallel do private(sum)
  do i=1,N
     sum(:,:) = 3
     b(i,1) = b(i,1) + a(1,1)*sum(1,1)
     b(i,1) = b(i,1) + a(2,1)*sum(1,2)
     b(i,1) = b(i,1) + a(3,1)*sum(1,3)
     b(i,2) = b(i,2) + a(1,2)*sum(2,1)
     b(i,2) = b(i,2) + a(2,2)*sum(2,2)
     b(i,2) = b(i,2) + a(3,2)*sum(2,3)
     b(i,3) = b(i,3) + a(1,1)*sum(3,1)
     b(i,3) = b(i,3) + a(2,1)*sum(3,2)
     b(i,3) = b(i,3) + a(3,1)*sum(3,3)
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


