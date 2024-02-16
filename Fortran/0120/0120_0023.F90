#if defined(ROLL_TIMES)
#define N (MIN(ROLL_TIMES,32))
#elif defined(MOD)
#define N 17
#else
#define N 16
#endif

#define CL_N1 12
#define CL_N2 32

program main
  real(kind=4), dimension(1:CL_N1,1:N,1:N,1:N,1:N) :: a,b,res
  real(kind=4), dimension(1:N,1:CL_N1,1:N,1:N,1:N) :: c
  real(kind=4), dimension(1:CL_N2,1:N,1:N,1:N,1:N) :: x,y,res2
  real(kind=4), dimension(1:N,1:CL_N2,1:N,1:N,1:N) :: z
  
  call init(a,b,c,res,N,CL_N1)
  call test(a,b,c,N,CL_N1)

  do i=1,N
  do j=1,N
  do k=1,N
  do k2=1,N
  do k3=1,CL_N1
     if(a(k3,k2,k,j,i) .ne. res(k3,k2,k,j,i)) then
        print *, "NG"
     endif
  enddo
  enddo
  enddo
  enddo
  enddo

  call init(x,y,z,res2,N,CL_N2)
  call test(x,y,z,N,CL_N2)

  do i=1,N
  do j=1,N
  do k=1,N
  do k2=1,N
  do k3=1,CL_N2
     if(x(k3,k2,k,j,i) .ne. res2(k3,k2,k,j,i)) then
        print *, "NG"
     endif
  enddo
  enddo
  enddo
  enddo
  enddo

  print *, "OK"
end program main

subroutine init(a,b,c,res,n1,n2)
  real(kind=4), dimension(1:n2,1:n1,1:n1,1:n1,1:n1) :: a,b,res
  real(kind=4), dimension(1:n1,1:n2,1:n1,1:n1,1:n1) :: c


  do i=1,n1
     do j=1,n1
        do k=1,n1
        do k2=1,n1
        do k3=1,n2
           a(k3,k2,k,j,i) = 0.
           b(k3,k2,k,j,i) = real(i+j+k+k2-k3)
           c(i,k3,k2,k,j) = real(i+j-k+k2+k3)
           res(k3,k2,k,j,i) = b(k3,k2,k,j,i) + c(i,k3,k2,k,j)
        enddo
        enddo
        enddo
     enddo
  enddo

end subroutine init


subroutine test(a,b,c,n1,n2)
  real(kind=4), dimension(1:n2,1:n1,1:n1,1:n1,1:n1) :: a,b
  real(kind=4), dimension(1:n1,1:n2,1:n1,1:n1,1:n1) :: c


  do i=1,n1
     do j=1,n1
        do k=1,n1
        do k2=1,n1
           a(1:n2,k2,k,j,i) = b(1:n2,k2,k,j,i) + c(i,1:n2,k2,k,j)
        enddo
        enddo
     enddo
  enddo
end subroutine test
