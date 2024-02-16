#define N 7
program main
  real(kind=8),dimension(1:N,1:N) :: a_r8,b_r8,res_r8
  real(kind=4),dimension(1:N,1:N) :: a_r4,b_r4,res_r4
#if defined(FP16)
  real(kind=2),dimension(1:N,1:N) :: a_r2,b_r2,res_r2
#endif
  integer(kind=8),dimension(1:N,1:N) :: a_i8,b_i8,res_i8
  integer(kind=4),dimension(1:N,1:N) :: a_i4,b_i4,res_i4
  integer(kind=2),dimension(1:N,1:N) :: a_i2,b_i2,res_i2
  integer(kind=1),dimension(1:N,1:N) :: a_i1,b_i1,res_i1

  a_r8 = 0.
  a_r4 = 0.
  a_i8 = 0
  a_i4 = 0
  a_i2 = 0
  a_i1 = 0

  b_r8 = 0.
  b_r4 = 0.
  b_i8 = 0
  b_i4 = 0
  b_i2 = 0
  b_i1 = 0

  res_r8 = 0.
  res_r4 = 0.
  res_i8 = 0
  res_i4 = 0
  res_i2 = 0
  res_i1 = 0

#if defined(FP16)
  a_r2 = 0.
  b_r2 = 0.
  res_r2 = 0.
#endif
  
  do i=1,N
     b_r8(2,i) = i
     b_r4(2,i) = i
     b_i8(2,i) = i
     b_i4(2,i) = i
     b_i2(2,i) = i
     b_i1(2,i) = i
     res_r8(1,i) = i
     res_r4(1,i) = i
     res_i8(1,i) = i
     res_i4(1,i) = i
     res_i2(1,i) = i
     res_i1(1,i) = i
#if defined(FP16)
     b_r2(2,i) = i
     res_r2(1,i) = i
#endif
  enddo
  
  call test_r8(a_r8,b_r8,N)
  call test_r4(a_r4,b_r4,N)
#if defined(FP16)
  call test_r2(a_r2,b_r2,N)
#endif
  call test_i8(a_i8,b_i8,N)
  call test_i4(a_i4,b_i4,N)
  call test_i2(a_i2,b_i2,N)
  call test_i1(a_i1,b_i1,N)

  do j=1,N
     do i=1,N
        if(a_r8(i,j) .ne. res_r8(i,j)) then
           print *,"ng"
        endif
        if(a_r4(i,j) .ne. res_r4(i,j)) then
           print *,"ng"
        endif
#if defined(FP16)
        if(a_r2(i,j) .ne. res_r2(i,j)) then
           print *,"ng"
        endif
#endif
        if(a_i8(i,j) .ne. res_i8(i,j)) then
           print *,"ng"
        endif
        if(a_i4(i,j) .ne. res_i4(i,j)) then
           print *,"ng"
        endif
        if(a_i2(i,j) .ne. res_i2(i,j)) then
           print *,"ng"
        endif
        if(a_i1(i,j) .ne. res_i1(i,j)) then
           print *,"ng"
        endif
     enddo
  enddo
  print *,"ok"
end program main


subroutine test_r8(a,b,n)
  integer :: n
  real(kind=8), dimension(1:n,1:n) :: a,b

  do i=1,n
     a(1,i) = b(2,i)
  enddo
end subroutine test_r8

subroutine test_r4(a,b,n)
  integer :: n
  real(kind=4), dimension(1:n,1:n) :: a,b

  do i=1,n
     a(1,i) = b(2,i)
  enddo
end subroutine test_r4

#if defined(FP16)
subroutine test_r2(a,b,n)
  integer :: n
  real(kind=2), dimension(1:n,1:n) :: a,b

  do i=1,n
     a(1,i) = b(2,i)
  enddo
end subroutine test_r2
#endif

subroutine test_i8(a,b,n)
  integer :: n
  integer(kind=8), dimension(1:n,1:n) :: a,b

  do i=1,n
     a(1,i) = b(2,i)
  enddo
end subroutine test_i8

subroutine test_i4(a,b,n)
  integer :: n
  integer(kind=4), dimension(1:n,1:n) :: a,b

  do i=1,n
     a(1,i) = b(2,i)
  enddo
end subroutine test_i4

subroutine test_i2(a,b,n)
  integer :: n
  integer(kind=2), dimension(1:n,1:n) :: a,b

  do i=1,n
     a(1,i) = b(2,i)
  enddo
end subroutine test_i2

subroutine test_i1(a,b,n)
  integer :: n
  integer(kind=1), dimension(1:n,1:n) :: a,b

  do i=1,n
     a(1,i) = b(2,i)
  enddo
end subroutine test_i1

