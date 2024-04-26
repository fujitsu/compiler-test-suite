program main
  logical(kind=8),dimension(64) :: a,b,res
  call init(a,b,res,64)
  do i=1,2
     call test(a,b)
  enddo
  do i=1,64
     if(a(i) .neqv. res(i)) then
        print *, "NG"
     endif
  enddo
  print *, "OK"
end program main

subroutine init(a,b,res,n1)
  logical(kind=8),dimension(1:n1) :: a,b,res

  do i=1,n1
     a(i) = .FALSE._8
     b(i) = .FALSE._8
     res(i) = .FALSE._8
  enddo

  do i=1,n1,6
     b(i) = .TRUE._8
     res(i) = .TRUE._8
  enddo
end subroutine init


subroutine test(a,b)
  logical(kind=8), dimension(64) :: a,b

  do i=1,64,6
     a(i) = b(i)
  enddo
end subroutine test
