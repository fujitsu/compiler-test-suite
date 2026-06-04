module mod
  implicit none
  integer, parameter :: NN = 300
  integer input(NN,NN);
  integer output(NN,NN);

  integer last_i,last_j

contains
  subroutine sub(end_j)
    integer, value :: end_j
    integer i,j
    i=0;j=0
    do i=1,100
       do j=1,end_j
          output(i,j) = input(i,j)  + 3;
       end do
    end do
    last_i = i;
  end subroutine sub
  subroutine check(end_j)
    integer, value :: end_j
    integer i,j
    i=0;j=0
    do i=1,100
       do j=1,end_j
          if (output(i,j) .ne. input(i,j)  + 3) then
             print *,'NG=', input(i,j), output(i,j)
          endif
       end do
    end do
    if (last_i .ne. i) print *,'calc_i=',last_i,'opt_i=',i+0
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
  do j=1,3
     call sub(end_data(j))
     call check(end_data(j))
  end do
  print *, 'PASS'
end program main
