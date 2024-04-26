program main
  real(kind=8),dimension(512) :: a,b,res
  call init(a,b,res,512)
  do i=1,2
     call test1(a,b)
  enddo
  do i=1,2
     call test2(a,b)
  enddo
  do i=1,512
     if(a(i) .ne. res(i)) then
        print *, "NG"
     endif
  enddo
  print *, "OK"
end program main

subroutine init(a,b,res,n1)
  real(kind=8),dimension(1:n1) :: a,b,res

  do i=1,n1
     a(i) = 0
     b(i) = 0
     res(i) = 0
  enddo

  do i=1,n1,16
     b(i) = i
     res(i) = i
  enddo
end subroutine init


subroutine test1(a,b)
  real(kind=8), dimension(512) :: a,b

  do i=1,512,16
     a(i) = b(i)
  enddo
end subroutine

subroutine test2(a,b)
  real(kind=8), dimension(512) :: a,b

  do i=1,512,16
     a(i) = b(i)
  enddo
end subroutine
