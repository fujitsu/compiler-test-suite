module task_dep_example_5
  implicit none
  integer, parameter :: n=6
  integer, parameter :: bs=3
  real, parameter :: ans_c=6.0
  real, parameter :: epsilon=1.0D-13

contains
  subroutine init(A, B, C)
    real, dimension(n, n) :: A, B, C
    integer :: i, j
    do i=1,n
       do j=1,n
          A(i,j) = 1.0
          B(i,j) = 1.0
          C(i,j) = 0.0
       end do
    end do
  end subroutine init

  subroutine test(C)
    real, dimension(n, n) :: C
    integer :: i, j
    do i=1,n
       do j=1,n
          if (abs(C(i,j) - ans_c).gt. epsilon) then
             print *, "NG"
          end if
       end do
    end do
  end subroutine test

  subroutine matmul_depend (N, BS, A, B, C)
    implicit none
    integer :: N, BS, BM
    real, dimension(N, N) :: A, B, C
    integer :: i, j, k, ii, jj, kk
    BM = BS - 1
    !$omp parallel
    !$omp single
    do i = 1, N, BS
       do j = 1, N, BS
          do k = 1, N, BS
             !$omp task shared(A,B,C) private(ii,jj,kk) &
             !$omp depend ( in: A(i:i+BM, k:k+BM), B(k:k+BM, j:j+BM) ) &
             !$omp depend ( inout: C(i:i+BM, j:j+BM) )
             do ii = i, i+BM
                do jj = j, j+BM
                   do kk = k, k+BM
                      C(jj,ii) = C(jj,ii) + A(kk,ii) * B(jj,kk)
                   end do
                end do
             end do
             !$omp end task
          end do
       end do
    end do
  !$omp end single
  !$omp end parallel

  end subroutine matmul_depend

end module task_dep_example_5

program main
  use task_dep_example_5
  real, dimension(n, n) :: A, B, C

  call init(A, B, C)

  call matmul_depend (n, bs, A, B, C)

  call test(C)

  print *, "OK"
  
end program main
