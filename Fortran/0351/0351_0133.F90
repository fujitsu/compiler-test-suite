program main
  integer(kind=8),dimension(64) :: a,b,res
  common //a,b
  call init(res,1)
  do i=1,2
     call test(1)
  enddo

  do i=1,64
     if(a(i) .ne. res(i)) then
      print *, "NG"
     endif
  enddo

  print *, "OK"
end program main

subroutine init(res,k)
  integer(kind=8),dimension(1:64) :: a,b,res
  integer :: k
  common //a,b


  do i=1,64
     a(i) = 0_8
     b(i) = 0_8
     res(i) = 0_8
  enddo

  do i=1,64-1,k
     b(i+1) = i * 2_8
     res(i+1) = i * 2_8
  enddo

end subroutine init


subroutine test(k)
  integer(kind=8),dimension(1:64) :: a,b
  integer :: k
  common //a,b


  do i=1,64-1,k
    a(i+1) = b(i+1)
  enddo
end subroutine test
