#define N 256

program main
  real(kind=2),dimension(N) :: a, dest
  real(kind=2) :: b

  call init(a,b,dest)

  do i=1,2
     call test5(dest, a, b)
  enddo
  do i=1,N
     if(dest(i) .ne. a(i)+b) then
        print *, "NG"
     endif
  enddo
  print *, "OK"

end program main

subroutine init(a,b,dest)
  real(kind=2),dimension(1:N) :: a, dest
  real(kind=2) :: b
  do i=1,N
     a(i) = i
     b = i
     dest(i) = 0_8
  enddo
end subroutine init

subroutine test5(dest,a, b)
  real(kind=2) :: b
  real(kind=2), dimension(N) :: dest,a
  do i=1,N
     dest(i) = a(i) + b
  enddo
end subroutine test5

