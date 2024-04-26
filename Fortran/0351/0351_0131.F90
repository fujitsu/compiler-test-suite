program main
  real(kind=8),dimension(64) :: a,b,res
  call init(a,b,res)
  do i=1,2
     call test(1,2,3,4,5,6,a,b)
  enddo

  do i=1,64
     if(a(i) .ne. res(i)) then
      print *, "NG"
     endif
  enddo

  print *, "OK"
end program main

subroutine init(a,b,res)
  real(kind=8),dimension(1:64) :: a,b,res

  do i=1,64
     a(i) = 0._8
     b(i) = 0._8
     res(i) = 0._8
  enddo

  do i=1,64-1,8
     b(i+1) = real(i,kind=8)
     res(i+1) = real(i,kind=8)
  enddo
end subroutine init


subroutine test(dummy1,dummy2,dummy3,dummy4,dummy5,dummy6,a,b)
  integer(kind=4)::dummy1,dummy2,dummy3
  integer(kind=4)::dummy4,dummy5,dummy6
  real(kind=8),dimension(1:64) :: a,b

  do i=1,64-1,8
    a(i+1) = b(i+1)
  enddo
end subroutine test
