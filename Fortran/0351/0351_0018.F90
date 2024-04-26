program main
  logical(kind=8),dimension(64) :: a,b,c,res
  call init(a,b,c,res,64)
  do i=1,2
     call test(a,b,c)
  enddo
  do i=1,64
     if(a(i) .neqv. res(i)) then
        print *, "NG"
     endif
  enddo
  print *, "OK"
end program main

subroutine init(a,b,c,res,n1)
  logical(kind=8),dimension(1:n1) :: a,b,c,res

  do i=1,n1
     a(i) = .FALSE._8
     b(i) = .TRUE._8
     c(i) = .TRUE._8
     res(i) = .TRUE._8
  enddo
end subroutine init


subroutine test(a,b,c)
  logical(kind=8), dimension(64) :: a,b,c

  do i=1,64
     a(i) = b(i) .and. c(i)
  enddo
end subroutine test
