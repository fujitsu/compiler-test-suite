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

  integer(kind=4),dimension(1:N) :: c

  c = (/(i,i=1,N)/)
  
  a_r8 = 0.
  a_r4 = 0.
  a_i8 = 0
  a_i4 = 0
  a_i2 = 0
  a_i1 = 0
#if defined(FP16)
  a_r2 = 0.
#endif
  
  do j=1,N
  do i=1,N
     b_r8(i,j) = i+j
     b_r4(i,j) = i+j
     b_i8(i,j) = i+j
     b_i4(i,j) = i+j
     b_i2(i,j) = i+j
     b_i1(i,j) = i+j
     res_r8(i,j) = i+j
     res_r4(i,j) = i+j
     res_i8(i,j) = i+j
     res_i4(i,j) = i+j
     res_i2(i,j) = i+j
     res_i1(i,j) = i+j
#if defined(FP16)
     b_r2(i,j) = i+j
     res_r2(i,j) = i+j
#endif
  enddo
  enddo
  
  call sub_r8(a_r8,b_r8,c,N)
  call sub_r4(a_r4,b_r4,c,N)
#if defined(FP16)
  call sub_r2(a_r2,b_r2,c,N)
#endif
  call sub_i8(a_i8,b_i8,c,N)
  call sub_i4(a_i4,b_i4,c,N)
  call sub_i2(a_i2,b_i2,c,N)
  call sub_i1(a_i1,b_i1,c,N)

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

subroutine sub_r8(a,b,c,n)
  real(8),dimension(1:n,1:n) :: a,b
  integer(4),dimension(1:n) :: c

  do j=1,n
     do i=1,n
        a(i,j) = b(c(i),j)
     enddo
  enddo
end subroutine sub_r8

subroutine sub_r4(a,b,c,n)
  real(4),dimension(1:n,1:n) :: a,b
  integer(4),dimension(1:n) :: c

  do j=1,n
     do i=1,n
        a(i,j) = b(c(i),j)
     enddo
  enddo
end subroutine sub_r4

#if defined(FP16)
subroutine sub_r2(a,b,c,n)
  real(2),dimension(1:n,1:n) :: a,b
  integer(4),dimension(1:n) :: c

  do j=1,n
     do i=1,n
        a(i,j) = b(c(i),j)
     enddo
  enddo
end subroutine sub_r2
#endif

subroutine sub_i8(a,b,c,n)
  integer(8),dimension(1:n,1:n) :: a,b
  integer(4),dimension(1:n) :: c

  do j=1,n
     do i=1,n
        a(i,j) = b(c(i),j)
     enddo
  enddo
end subroutine sub_i8

subroutine sub_i4(a,b,c,n)
  integer(4),dimension(1:n,1:n) :: a,b
  integer(4),dimension(1:n) :: c

  do j=1,n
     do i=1,n
        a(i,j) = b(c(i),j)
     enddo
  enddo
end subroutine sub_i4

subroutine sub_i2(a,b,c,n)
  integer(2),dimension(1:n,1:n) :: a,b
  integer(4),dimension(1:n) :: c

  do j=1,n
     do i=1,n
        a(i,j) = b(c(i),j)
     enddo
  enddo
end subroutine sub_i2

subroutine sub_i1(a,b,c,n)
  integer(1),dimension(1:n,1:n) :: a,b
  integer(4),dimension(1:n) :: c

  do j=1,n
     do i=1,n
        a(i,j) = b(c(i),j)
     enddo
  enddo
end subroutine sub_i1

