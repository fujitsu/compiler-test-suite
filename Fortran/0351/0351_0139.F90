program main
  real(kind=8),dimension(64) :: a,b,res
  integer(kind=8),dimension(64) :: c
  call init(a,b,c,res,64)
  do i=1,2
     call test(a,b,c)
  enddo

  do i=1,64
     if(a(i) .ne. res(i)) then
        print *, "NG"
     endif
  enddo

  print *, "OK"
end program main

subroutine init(a,b,c,res,n1)
  real(kind=8),dimension(1:n1) :: a,b,res
  integer(kind=8),dimension(1:n1) :: c

  do i=1,n1
     a(i) = 0._8
     b(i) = real(i,kind=8)
     c(i) = i
     res(i) = b(i)
  enddo
end subroutine init


subroutine test(a,b,c)
real(kind=8),dimension(1:64) :: a,b
integer(kind=8),dimension(1:64) :: c

do i=1,64
  a(c(i)) = b(i)
enddo
end subroutine test
