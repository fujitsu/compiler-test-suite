program main
  real(kind=4),dimension(64) :: a,b,res
  call init(a,b,res,64)
  do i=1,2
     call test(a,b)
  enddo
  do i=1,64
     if(a(i) .ne. res(i)) then
        print *, "NG"
     endif
  enddo
  print *, "OK"
end program main

subroutine init(a,b,res,n1)
  real(kind=4),dimension(1:n1) :: a,b,res

  do i=1,n1
     a(i) = 0._4
     b(i) = real(i,kind=4) * 1.11_4
     res(i) = real(int(b(i) + 0.5_4, kind=4), kind=4)
  enddo
end subroutine init


subroutine test(a,b)
  real(kind=4), dimension(64) :: a,b

  do i=1,64
     a(i) = anint(b(i))
  enddo
end subroutine test
