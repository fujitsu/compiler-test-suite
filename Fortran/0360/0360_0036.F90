program main
  integer(kind=4),dimension(64) :: a,b,res
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
  integer(kind=4),dimension(1:64) :: a,b,res
  common //a,b

  j = 1

  do i=1,64
     a(i) = 0_4
     b(i) = 0_4
     res(i) = 0_4
  enddo
  do i=1,64-1,4
     b(i) = i * 2_4
     res(j) = i * 2_4
     j=j+1
  enddo

end subroutine init


subroutine test()
  integer(kind=4),dimension(1:64) :: a,b
  common //a,b

  j = 1

  do i=1,64-1,4
    a(j) = b(i)
    j=j+1
  enddo
end subroutine test
