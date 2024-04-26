program main
  real(kind=4),dimension(64) :: a,b,res
  call init(a,b,res)
  do i=1,2
     call test(a,b)
  enddo
  do i=1,64
     if(((abs(a(i) -  res(i))/abs(a(i))) .gt. 1.0E-6)) then
        print *, "NG"
     endif
  enddo
  print *, "OK"
end program main

subroutine init(a,b,res)
  real(kind=4),dimension(1:64) :: a,b,res

  do i=1,64
     a(i) = 0._4
     b(i) = real(i,kind=4)+1._4
     res(i) = 1._8/sqrt(real(i,kind=4)+1._4)
  enddo
end subroutine init


subroutine test(a,b)
  real(kind=4), dimension(1:64) :: a,b

  do i=1,64
     a(i) = 1._8/sqrt(b(i))
  enddo
end subroutine test
