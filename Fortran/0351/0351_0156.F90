program main
  integer(kind=4),dimension(64) :: a,b,c,res
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
  integer(kind=4),dimension(1:n1) :: a,b,c,res

  do i=1,n1
     a(i) = 0_4
     b(i) = i
     c(i) = i+1_4
     res(i) = i+1_4
  enddo
end subroutine init


subroutine test(a,b,c)
  integer(kind=4), dimension(64) :: a,b,c

  do i=1,64
     a(i) = max(b(i), c(i))
  enddo
end subroutine test
