#if defined(ROLL_TIMES)
#define N ROLL_TIMES
#elif defined(MOD)
#define N 257
#else
#define N 256
#endif

#define CL_N1 16
#define CL_N2 2

program main
  real(kind=4), dimension(1:CL_N1,1:N) :: a,b,res
  real(kind=4), dimension(1:N,1:CL_N1) :: c
  real(kind=4), dimension(1:CL_N2,1:N) :: x,y,res2
  real(kind=4), dimension(1:N,1:CL_N2) :: z
  
  call init(a,b,c,res,N,CL_N1)
  call test(a,b,c,N,CL_N1)

  do i=1,N
  do j=1,CL_N1
     if(a(j,i) .ne. res(j,i)) then
        print *, "NG"
     endif
  enddo
  enddo

  call init(x,y,z,res2,N,CL_N2)
  call test(x,y,z,N,CL_N2)

  do i=1,N
  do j=1,CL_N2
     if(x(j,i) .ne. res2(j,i)) then
        print *, "NG"
     endif
  enddo
  enddo

  print *, "OK"
end program main

subroutine init(a,b,c,res,n1,n2)
  real(kind=4), dimension(1:n2,1:n1) :: a,b,res
  real(kind=4), dimension(1:n1,1:n2) :: c

  do i=1,n1
     do j=1,n2
        a(j,i) = 0.
        b(j,i) = real(i+j)
        c(i,j) = real(i+j+1)
        res(j,i) = b(j,i) * c(i,j)
     enddo
  enddo

end subroutine init


subroutine test(a,b,c,n1,n2)
  real(kind=4), dimension(1:n2,1:n1) :: a,b
  real(kind=4), dimension(1:n1,1:n2) :: c


  do i=1,n1
     a(1:n2,i) = b(1:n2,i) * c(i,1:n2)
  enddo
end subroutine test
