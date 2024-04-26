program main
  real(kind=4),dimension(1:64) :: a
  integer(kind=8),dimension(1:64) :: b
  call init(a,b)
  do i=1,2
     call test(a,b)
  enddo

  do i=1,64
     if(a(i) .ne. i) then
        print *, "NG"
     endif
  enddo
  print *, "OK"
end program main

subroutine init(a,b)
  real(kind=4),dimension(1:64) :: a
  integer(kind=8),dimension(1:64) :: b

  do i=1,64
     a(i) = 0
     b(i) = int(i,kind=8)
  enddo
end subroutine init


subroutine test(a,b)
  real(kind=4),dimension(1:64) :: a
  integer(kind=8),dimension(1:64) :: b

  do i=1,64
     a(i) = b(i)
  enddo
end subroutine test
