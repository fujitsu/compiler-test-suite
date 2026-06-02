module mod
  implicit none
  integer, parameter :: NN = 300
  integer input(NN,NN);
  integer output(NN,NN);

  integer last_i,last_j

contains
  subroutine sub(end_i, end_j)
    integer, value :: end_i, end_j
    integer i,j
    i=0;j=0
    do i=1,end_i
       do j=1,end_j
          output(j,i) = input(j,i)  + 3;
       end do
    end do
    last_j = j;
  end subroutine sub
  subroutine check(end_i, end_j)
    integer, value :: end_i, end_j
    integer i,j
    i=0;j=0
    do i=1,end_i
       do j=1,end_j
          if (output(j,i) .ne. input(j,i)  + 3) then
             print *,'NG=', input(j,i), output(j,i)
          endif
       end do
    end do
    if (last_j .ne. j) print *,'end_j=',end_j+0,'calc_j=',last_j,'opt_j=',j+0
  end subroutine check
end module mod

program main
  use mod
  implicit none
  integer i,j,n
  integer end_data(3)
  end_data = (/-1, 1, 3/)
  n = 0
  do j=1,NN
     do i=1,NN
        input(i,j) = n
        n=n+1
     end do
  end do
  do i=1,3
     do j=1,3
       call sub(end_data(i),end_data(j))
       call check(end_data(i),end_data(j))
     end do
  end do
  print *, 'PASS'
end program main
