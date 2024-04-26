program main
  real(kind=8),dimension(512) :: a,b,res
  call init(a,b,res,512,20_8)
  do i=1,2
     call test1(a,b,20_8)
  enddo
  do i=1,2
     call test2(a,b,20_8)
  enddo
  do i=1,512
     if(a(i) .ne. res(i)) then
        print *, "NG"
     endif
  enddo
  print *, "OK"
end program main

subroutine init(a,b,res,n1,k)
  real(kind=8),dimension(1:n1) :: a,b,res
  integer(kind=8) :: k

  do i=1,n1
     a(i) = 0
     b(i) = 0
     res(i) = 0
  enddo

  do i=1,n1,k
     b(i) = i
     res(i) = i
  enddo
end subroutine init


subroutine test1(a,b,k)
  real(kind=8), dimension(512) :: a,b
  integer(kind=8) :: k

  do i=1,512,k
     a(i) = b(i)
  enddo
end subroutine

subroutine test2(a,b,k)
  real(kind=8), dimension(512) :: a,b
  integer(kind=8) :: k

  do i=1,512,k
     a(i) = b(i)
  enddo
end subroutine
