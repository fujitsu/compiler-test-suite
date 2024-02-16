#define N 256

program main
  real(kind=2),dimension(N) :: a,b,res
  call init(a,b,res)
  do i=1,2
     call test(a,b)
  enddo
  do i=1,N
     if(a(i) .ne. res(i)) then
        print *, "NG"
     endif
  enddo
  print *, "OK"
end program main

subroutine init(a,b,res)
  real(kind=2),dimension(1:N) :: a,b,res
  do i=1,N
     a(i) = 0.
     if (i .gt. N/2) then
        b(i) = real(i,kind=2)
     else
        b(i) = real(-i,kind=2)
     endif
     res(i) = real(i,kind=2)
  enddo
end subroutine init

subroutine test(a,b)
  real(kind=2), dimension(1:N) :: a,b
  do i=1,N
     a(i) = abs(b(i))
  enddo
end subroutine test
