#define N 256

program main
  real(kind=2),dimension(N) :: a,b,res
  call init(a,b)
  do i=1,2
     call test(a,b,res)
  enddo
  do i=1,N
     if(1._8 .ne. res(i)) then
        print *, "NG"
     endif
  enddo
  print *, "OK"
end program main

subroutine init(a,b)
  real(kind=2),dimension(N) :: a,b
  do i=1,N
     a(i) = real(i+1_2,kind=2)
     b(i) = real(i,kind=2)
  enddo
end subroutine init

subroutine test(a,b,res)
  real(kind=2), dimension(N) :: a,b,res
  real(kind=2) :: tmp
  do i=1,N
     if(.not.(a(i) .le. b(i))) then
       tmp = 1.0_8
     else
       tmp = 0.0_8
     endif
     res(i) = tmp
  enddo
end subroutine test
