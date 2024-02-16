#define N 256

program main
  real(kind=2),dimension(N) :: a,b,c,res
  call init(a,b,c)
  do i=1,2
     call test(a,b,c,res)
  enddo
  do i=1,N
     if(a(i) .ne. res(i)) then
        print *, "NG"
     endif
  enddo
  print *, "OK"
end program main

subroutine init(a,b,c)
  real(kind=2),dimension(N) :: a,b,c
  do i=1,N
     a(i) = i+1.0_8
     b(i) = i
     c(i) = 2.0_8
  enddo
end subroutine init

subroutine test(a,b,c,res)
  real(kind=2), dimension(N) :: a,b,c,res
  real(kind=2)::n
  n = 2.0_8
  do i=1,N
     if(c(i).eq. n) then
       res(i) = a(i)
     else
       res(i) = b(i)
     endif
  enddo
end subroutine test
