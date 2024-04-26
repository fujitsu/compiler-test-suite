program main
  integer(kind=4),dimension(64) :: a,b,res
  integer(kind=4),dimension(64) :: c,d
  common //a,b
  call init(c,d,res)
  do i=1,2
     call test(c,d)
  enddo

  do i=1,64
     if(a(i) .ne. res(i)) then
      print *, "NG"
     endif
  enddo

  print *, "OK"
end program main

subroutine init(c,d,res)
  integer(kind=4),dimension(1:64) :: a,b,res
  integer(kind=4),dimension(1:64) :: c,d
  common //a,b


  do i=1,64
     a(i) = 0_4
     b(i) = 0_4
     c(i) = i
     d(i) = i
     res(i) = 0_4
  enddo
  do i=1,64-1,8
     b(i+1) = i * 2_4
     res(i+1) = i * 2_4
  enddo

end subroutine init


subroutine test(c,d)
  integer(kind=4),dimension(1:64) :: a,b
  integer(kind=4),dimension(1:64) :: c,d
  common //a,b


  do i=1,64-1,8
    a(c(i)+1) = b(d(i)+1)
  enddo
end subroutine test
