program main
  real(kind=4),dimension(64) :: a,b,c,d,res
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
  real(kind=4),dimension(1:64) :: a,b,c,d,res

  do i=1,64
     a(i) = 0._4
     b(i) = 1._4
     c(i) = real(i,kind=4)
     d(i) = real(i,kind=4)
     res(i) = 0._4
  enddo
end subroutine init


subroutine test(a,b,c,d)
  real(kind=4), dimension(1:64) :: a,b,c,d

  do i=1,64
     a(i) = b(i) * c(i) - d(i)
  enddo
end subroutine test
