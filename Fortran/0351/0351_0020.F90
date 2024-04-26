program main
  integer(kind=8),dimension(64) :: a,dest
  call init(a,dest,64)
  do i=1,2
     call test(a,dest)
  enddo
  do i=1,64
     if(NOT(mod(i,2)) .ne. dest(i)) then
        print *, "NG"
     endif
  enddo
  print *, "OK"
end program main

subroutine init(a,dest,n1)
  integer(kind=8),dimension(1:n1) :: a,dest

  do i=1,n1
     a(i) = mod(i,2)
     dest(i) = 0
  enddo
end subroutine init


subroutine test(a,dest)
  integer(kind=8), dimension(1:64) :: a,dest

  do i=1,64
     dest(i) = NOT(a(i))
  enddo
end subroutine test
