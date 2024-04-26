program main
  integer(kind=4),dimension(64) :: a,b,c,d,res
  call init(a,b,c,d,res)
  do i=1,2
     call test(a,b,c,d)
  enddo
  do i=1,64
     if(a(i) .ne. res(i)) then
        print *, "NG"
     endif
  enddo
  print *, "OK"
end program main

subroutine init(a,b,c,d,res)
  integer(kind=4),dimension(1:64) :: a,b,c,d,res

  do i=1,64
     a(i) = 0_4
     b(i) = 1_4
     c(i) = i
     d(i) = i
     res(i) = i*2
  enddo
end subroutine init


subroutine test(a,b,c,d)
  integer(kind=4), dimension(1:64) :: a,b,c,d

  do i=1,64
     a(i) = b(i) * c(i) + d(i)
  enddo
end subroutine test
