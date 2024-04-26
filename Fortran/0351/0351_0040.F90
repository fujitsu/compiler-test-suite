program main
  integer(kind=8),dimension(1:64) :: a
  integer(kind=4),dimension(1:64) :: bb
  real(kind=4),dimension(1:64) :: b
  call init(a,b,bb)
  do i=1,2
     call test(a,b,bb)
  enddo
  do i=1,64
     if(a(i) .ne. i) then
        print *, "NG"
     endif
  enddo
  print *, "OK"
end program main

subroutine init(a,b,bb)
  integer(kind=8),dimension(1:64) :: a
  integer(kind=4),dimension(1:64) :: bb
  real(kind=4),dimension(1:64) :: b

  do i=1,64
     a(i) = 0
     bb(i) = 0
     b(i) = real(i,kind=4)
  enddo
end subroutine init


subroutine test(a,b,bb)
  integer(kind=8),dimension(1:64) :: a
  integer(kind=4),dimension(1:64) :: bb
  real(kind=4),dimension(1:64) :: b

  do i=1,64
     bb(i) = int(b(i),kind=4)
     a(i) = int(bb(i),kind=8)
  enddo
end subroutine test
