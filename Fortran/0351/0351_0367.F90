program main
  logical(kind=4),dimension(64) :: a,b,res
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
  logical(kind=4),dimension(1:n1) :: a,b,res

  do i=1,n1
     a(i) = .FALSE._4
     b(i) = .FALSE._4
     res(i) = .FALSE._4
  enddo

  do i=1,n1,5
     b(i) = .TRUE._4
     res(i) = .TRUE._4
  enddo
end subroutine init


subroutine test(a,b)
  logical(kind=4), dimension(64) :: a,b

  do i=1,64,5
     a(i) = b(i)
  enddo
end subroutine test
