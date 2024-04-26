program main
  integer(kind=8),dimension(64) :: a,res
  real(kind=4),dimension(64) :: b
  call init(a,b,res)
  do i=1,2
     call test(a,b)
  enddo
  do i=1,64
     if(a(i) .ne. res(i)) then
        print *, "NG"
     endif
  enddo
  print *, "OK"
end program main

subroutine init(a,b,res)
  integer(kind=8),dimension(1:64) :: a,res
  real(kind=4),dimension(1:64) :: b

  do i=1,64
     a(i) = 0_8
     b(i) = real(i+1,kind=4) * 1.00001_4
     res(i) = i+1_8
  enddo
end subroutine init


subroutine test(a,b)
  integer(kind=8), dimension(64) :: a
  real(kind=4), dimension(64) :: b

  do i=1,64
     a(i) = floor(b(i),kind=8)
  enddo
end subroutine test
