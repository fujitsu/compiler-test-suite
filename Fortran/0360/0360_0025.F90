program main
  integer(kind=8),dimension(64) :: a,b,res
  common //a,b
  call init(res)
  do i=1,2
     call test()
  enddo

  do i=1,64
     if(a(i) .ne. res(i)) then
      print *, "NG"
     endif
  enddo

  print *, "OK"
end program main

subroutine init(res)
  integer(kind=8),dimension(1:64) :: a,b,res
  common //a,b

  j = 1

  do i=1,64
     a(i) = 0_8
     b(i) = 0_8
     res(i) = 0_8
  enddo
  do i=1,64-1,4
     b(j) = i * 2_8
     res(i) = i * 2_8
     j=j+1
  enddo

end subroutine init


subroutine test()
  integer(kind=8),dimension(1:64) :: a,b
  common //a,b

  j = 1

  do i=1,64-1,4
    a(i) = b(j)
    j=j+1
  enddo
end subroutine test
