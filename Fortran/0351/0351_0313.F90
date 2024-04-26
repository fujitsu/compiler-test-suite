program main
  real(kind=8),dimension(64) :: a,b,res
  call init(a,b,res)
  do i=1,2
     call test(a,b)
  enddo
  do i=1,64
     if(((abs(a(i) -  res(i))/abs(a(i))) .gt. 1.0D-13)) then
        print *, "NG"
     endif
  enddo
  print *, "OK"
end program main

subroutine init(a,b,res)
  real(kind=8),dimension(1:64) :: a,b,res

  do i=1,64
     a(i) = 0.
     b(i) = real(i,kind=8)
     res(i) = sqrt(real(i,kind=8))
  enddo
end subroutine init


subroutine test(a,b)
  real(kind=8), dimension(1:64) :: a,b

  do i=1,64
     a(i) = sqrt(b(i))
  enddo
end subroutine test
