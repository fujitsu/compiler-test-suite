module mod
  implicit none
  integer, parameter :: NN = 300
  integer input(NN,NN,NN);
  integer output(NN,NN,NN);

  integer last_i,last_j,last_k;

contains
  subroutine sub(end_i, end_j, end_k)
    integer, value :: end_i, end_j, end_k
    integer i,j,k
    i=0;j=0;k=0
    do i=1,end_i
       do j=1,100
          do k=1,end_k
             output(j,k,i) = input(j,k,i)  + 3;
          end do
       end do
    end do
    last_j = j;
  end subroutine sub
  subroutine check(end_i, end_j, end_k)
    integer, value :: end_i, end_j, end_k
    integer i,j,k
    i=0;j=0;k=0
    do i=1,end_i
       do j=1,100
          do k=1,end_k
             if (output(j,k,i) .ne. input(j,k,i)  + 3) then
                print *,'NG=', input(j,k,i), output(j,k,i)
             endif
          end do
       end do
    end do
    if (last_j .ne. j) print *,'end_j=',100+0,'calc_j=',last_j,'opt_j=',j+0
  end subroutine check
end module mod

program main
  use mod
  implicit none
  integer i,j,k,n
  integer end_data(3)
  end_data = (/-1, 1, 3/)
  n = 0
  do k=1,NN
     do j=1,NN
        do i=1,NN
           input(i,j,k) = n
           n=n+1
        end do
     end do
  end do
  do i=1,3
     do j=1,3
        do k=1,3
           call sub(end_data(i),end_data(j),end_data(k))
           call check(end_data(i),end_data(j),end_data(k))
        end do
     end do
  end do
  print *, 'PASS'
end program main
