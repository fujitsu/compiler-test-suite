program main
  complex(4),dimension(1:64) :: a,b,c,d,res
  call init(a,b,c,d,res)
  call test(a,b,c,d)
  call check(a,res)
end program main

subroutine init(a,b,c,d,res)
  integer(4) :: i
  complex(4),dimension(1:64) :: a,b,c,d,res
  do i=1,64
     a(i) = cmplx(1,1,kind=8)
     b(i) = cmplx(i,i,kind=8)
     c(i) = cmplx(i,i+1,kind=8)
     d(i) = cmplx(i+1,i,kind=8)
     res(i) = b(i) - c(i) * d(i)
  enddo
end subroutine init

subroutine test(a,b,c,d)
  integer(4) :: i
  complex(4),dimension(1:64) :: a,b,c,d
  do i=1,64
     a(i) = b(i) - c(i) * d(i)
  enddo
end subroutine test

subroutine check(x,y)
  integer(4) :: i
  complex(4),dimension(1:64) :: x, y

  do i = 1,64
     if (((abs(real(x(i)) - real(y(i)))/abs(real(x(i)))) .gt. (1.0E-6) .or. (abs(imag(x(i)) - imag(y(i)))/abs(imag(x(i)))) .gt. (1.0E-6))) then
        print *, "NG", i, x(i),y(i)
        exit
     endif
  enddo
  print *, "OK"
end subroutine check
