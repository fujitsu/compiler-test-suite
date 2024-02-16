#if defined(ROLL_TIMES)
#define N ROLL_TIMES
#elif defined(MOD)
#define N 33
#else
#define N 32
#endif

#define CL_N1 6
#define CL_N2 11

program main
  real(kind=4), dimension(1:CL_N1,1:N,1:N) :: a,b,res
  real(kind=4), dimension(1:N,1:CL_N1,1:N) :: c
  real(kind=4), dimension(1:CL_N2,1:N,1:N) :: x,y,res2
  real(kind=4), dimension(1:N,1:CL_N2,1:N) :: z
  
  call init(a,b,c,res,N,CL_N1)
  call test(a,b,c,N,CL_N1)

  do i=1,N
  do j=1,N
  do k=1,CL_N1
     if(a(k,j,i) .ne. res(k,j,i)) then
        print *, "NG"
     endif
  enddo
  enddo
  enddo

  call init(x,y,z,res2,N,CL_N2)
  call test(x,y,z,N,CL_N2)

  do i=1,N
  do j=1,N
  do k=1,CL_N2
     if(x(k,j,i) .ne. res2(k,j,i)) then
        print *, "NG"
     endif
  enddo
  enddo
  enddo

  print *, "OK"
end program main

subroutine init(a,b,c,res,n1,n2)
  real(kind=4), dimension(1:n2,1:n1,1:n1) :: a,b,res
  real(kind=4), dimension(1:n1,1:n2,1:n1) :: c

  do i=1,n1
     do j=1,n1
        do k=1,n2
           a(k,j,i) = 0.
           b(k,j,i) = real(i+j+k)
           c(i,k,j) = real(i+j-k)
           res(k,j,i) = b(k,j,i) + c(i,k,j)
        enddo
     enddo
  enddo

end subroutine init


subroutine test(a,b,c,n1,n2)
  real(kind=4), dimension(1:n2,1:n1,1:n1) :: a,b
  real(kind=4), dimension(1:n1,1:n2,1:n1) :: c

  do i=1,n1
     do j=1,n1
        do k=1,n2
           a(k,j,i) = b(k,j,i) + c(i,k,j)
        enddo
     enddo
  enddo
end subroutine test
