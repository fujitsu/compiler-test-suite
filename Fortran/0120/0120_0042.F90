#if defined(ROLL_TIMES)
#define N ROLL_TIMES
#elif defined(MOD)
#define N 129
#else
#define N 128
#endif

#define CL_N1 64
#define SVU_N1 3
#define SVU_N2 5
#define SVU_N3 12
#define SVU_N4 13
#define SVU_N5 24

program main
  real(kind=4), dimension(1:CL_N1,1:N) :: a,b,res
  real(kind=4), dimension(1:N,1:CL_N1) :: c
  
  call init(a,b,c,res,N,CL_N1,SVU_N1)
  call test1(a,b,c,N,CL_N1)

  do i=1,N
  do j=1,SVU_N1
     if(a(j,i) .ne. res(j,i)) then
        print *, "NG"
     endif
  enddo
  enddo

  call init(a,b,c,res,N,CL_N1,SVU_N2)
  call test2(a,b,c,N,CL_N1)

  do i=1,N
  do j=1,SVU_N2
     if(a(j,i) .ne. res(j,i)) then
        print *, "NG"
     endif
  enddo
  enddo

  call init(a,b,c,res,N,CL_N1,SVU_N3)
  call test3(a,b,c,N,CL_N1)

  do i=1,N
  do j=1,SVU_N3
     if(a(j,i) .ne. res(j,i)) then
        print *, "NG"
     endif
  enddo
  enddo

  call init(a,b,c,res,N,CL_N1,SVU_N4)
  call test4(a,b,c,N,CL_N1)

  do i=1,N
  do j=1,SVU_N4
     if(a(j,i) .ne. res(j,i)) then
        print *, "NG"
     endif
  enddo
  enddo

  call init(a,b,c,res,N,CL_N1,SVU_N5)
  call test5(a,b,c,N,CL_N1)

  do i=1,N
  do j=1,SVU_N5
     if(a(j,i) .ne. res(j,i)) then
        print *, "NG"
     endif
  enddo
  enddo
  

  print *, "OK"
end program main

subroutine init(a,b,c,res,n1,n2,n3)
  real(kind=4), dimension(1:n2,1:n1) :: a,b,res
  real(kind=4), dimension(1:n1,1:n2) :: c

  do i=1,n1
     do j=1,n2
        a(j,i) = 0.
        res(j,i) = 0.
        b(j,i) = real(i+j)
        c(i,j) = real(i+j+1)
     enddo
     do j=1,n3
        res(j,i) = b(j,i) * c(i,j)
     enddo
  enddo

end subroutine init


subroutine test1(a,b,c,n1,n2)
  real(kind=4), dimension(1:n2,1:n1) :: a,b
  real(kind=4), dimension(1:n1,1:n2) :: c

  do i=1,n1
     do j=1,SVU_N1
        a(j,i) = b(j,i) * c(i,j)
     enddo
  enddo
end subroutine test1

subroutine test2(a,b,c,n1,n2)
  real(kind=4), dimension(1:n2,1:n1) :: a,b
  real(kind=4), dimension(1:n1,1:n2) :: c

  do i=1,n1
     do j=1,SVU_N2
        a(j,i) = b(j,i) * c(i,j)
     enddo
  enddo
end subroutine test2

subroutine test3(a,b,c,n1,n2)
  real(kind=4), dimension(1:n2,1:n1) :: a,b
  real(kind=4), dimension(1:n1,1:n2) :: c

  do i=1,n1
     do j=1,SVU_N3
        a(j,i) = b(j,i) * c(i,j)
     enddo
  enddo
end subroutine test3

subroutine test4(a,b,c,n1,n2)
  real(kind=4), dimension(1:n2,1:n1) :: a,b
  real(kind=4), dimension(1:n1,1:n2) :: c

  do i=1,n1
     do j=1,SVU_N4
        a(j,i) = b(j,i) * c(i,j)
     enddo
  enddo
end subroutine test4

subroutine test5(a,b,c,n1,n2)
  real(kind=4), dimension(1:n2,1:n1) :: a,b
  real(kind=4), dimension(1:n1,1:n2) :: c

  do i=1,n1
     do j=1,SVU_N5
        a(j,i) = b(j,i) * c(i,j)
     enddo
  enddo
end subroutine test5
