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
          do k=1,100
             output(j,i,k) = input(j,i,k)  + 3;
          end do
       end do
    end do
    last_i = i;
    last_j = j;
    last_k = k;
  end subroutine sub
  subroutine check(end_i, end_j, end_k)
    integer, value :: end_i, end_j, end_k
    integer i,j,k
    i=0;j=0;k=0
    do i=1,end_i
       do j=1,100
          do k=1,100
             if (output(j,i,k) .ne. input(j,i,k)  + 3) then
                print *,'NG=', input(j,i,k), output(j,i,k)
             endif
          end do
       end do
    end do
    if (last_i .ne. i) print *,'end_i=',end_i+0,'calc_i=',last_i,'opt_i=',i+0
    if (last_j .ne. j) print *,'end_j=',100+0,'calc_j=',last_j,'opt_j=',j+0
    if (last_k .ne. k) print *,'end_k=',100+0,'calc_k=',last_k,'opt_k=',k+0
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
