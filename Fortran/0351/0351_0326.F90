program main
  integer(kind=8),dimension(64) :: a,b,res
  call init(a,b,res,64)
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

subroutine init(a,b,res,n1)
  integer(kind=8),dimension(1:n1) :: a,b,res

  do i=1,n1
     a(i) = 0
     b(i) = 0
     res(i) = 0
  enddo

  do i=1,n1,2
     b(i) = i
     res(i) = i
  enddo
end subroutine init


subroutine test(a,b)
  integer(kind=8), dimension(64) :: a,b

  do i=1,64,2
     a(i) = b(i)
  enddo
end subroutine test
