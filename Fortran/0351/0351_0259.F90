program main
  real(kind=8),dimension(64) :: a,b,res
  call init(a,b)
  do i=1,2
     call test(a,b,res)
  enddo
  do i=1,64
     if(1._8 .ne. res(i)) then
        print *, "NG"
     endif
  enddo
  print *, "OK"
end program main

subroutine init(a,b)
  real(kind=8),dimension(64) :: a,b

  do i=1,64
     a(i) = real(i+1_4,kind=8)
     b(i) = real(i,kind=8)
  enddo
end subroutine init


subroutine test(a,b,res)
  real(kind=8), dimension(64) :: a,b,res
  real(kind=8) :: tmp

  do i=1,64
     if(.not.(a(i) .ge. b(i))) then
       tmp = 0.0_8
     else
       tmp = 1.0_8
     endif
     res(i) = tmp
  enddo
end subroutine test
