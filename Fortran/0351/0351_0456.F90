program main
  integer(kind=8) :: a
  integer(kind=8),dimension(64) :: b,res
  call init(a,b,res,64)
  do i=1,2
     call test(a,b)
  enddo
  do i=1,64
     if(a .ne. res(i)) then
        print *, "NG"
     endif
  enddo
  print *, "OK"
end program main

subroutine init(a,b,res,n1)
  integer(kind=8) :: a
  integer(kind=8),dimension(1:n1) :: b,res

  do i=1,n1
     a = 0_8
     b(i) = i
     res(i) = n1
  enddo
end subroutine init


subroutine test(a,b)
  integer(kind=8) :: a
  integer(kind=8), dimension(64) :: b

  do i=1,64
     a = b(i)
  enddo
end subroutine test
