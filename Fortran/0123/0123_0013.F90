#define N 256

program main
  integer(kind=4),dimension(1:N) :: a
  real(kind=2),dimension(1:N) :: b
  call init(a,b)
  do i=1,2
     call test(a,b)
  enddo
  do i=1,N
     if(a(i) .ne. i) then
        print *, "NG"
     endif
  enddo
  print *, "OK"
end program main

subroutine init(a,b)
  integer(kind=4),dimension(1:N) :: a
  real(kind=2),dimension(1:N) :: b
  do i=1,N
     a(i) = 0
     b(i) = real(i,kind=2)
  enddo
end subroutine init

subroutine test(a,b)
  integer(kind=4),dimension(1:N) :: a
  real(kind=2),dimension(1:N) :: b
  do i=1,N
     a(i) = b(i)
  enddo
end subroutine test
