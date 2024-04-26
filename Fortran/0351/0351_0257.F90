program main
  integer(kind=8),dimension(64) :: a,b,res
  call init(a,b)
  do i=1,2
     call test(a,b,res)
  enddo
  do i=1,64
     if(1_8 .ne. res(i)) then
        print *, "NG"
     endif
  enddo
  print *, "OK"
end program main

subroutine init(a,b)
  integer(kind=8),dimension(64) :: a,b

  do i=1,64
     a(i) = i+1_8
     b(i) = i
  enddo
end subroutine init


subroutine test(a,b,res)
  integer(kind=8), dimension(64) :: a,b,res
  integer(kind=8) :: tmp

  do i=1,64
     if(.not.(a(i) .ge. b(i))) then
       tmp = 2_8
     else
       tmp = 1_8
     endif
     res(i) = tmp
  enddo
end subroutine test
