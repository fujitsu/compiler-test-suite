#define N 256

program main
  real(kind=2),dimension(N) :: dest,a,b
  call init(dest,a,b,N)
  do i=1,2
     call test(dest,a,b)
  enddo
  do i=1,N
     if(b(i) .ne. dest(i)) then
        print *, "NG"
     endif
  enddo
  print *, "OK"
end program main

subroutine init(dest,a,b,n1)
  real(kind=2),dimension(1:n1) :: dest,a,b
  do i=1,n1
     dest(i) = 0
     a(i) = i
     b(i) = -i
  enddo
end subroutine init

subroutine test(dest,a,b)
  real(kind=2), dimension(N) :: dest,a,b
  do i=1,N
     dest(i) = SIGN(a(i),b(i))
  enddo
end subroutine test
