program main
  complex(kind=4),dimension(64) :: a,b,c,res
  integer,dimension(1:64) :: mask
  call init(a,b,c,res,mask)
  do i=1,2
     call test(a,b,c,mask)
  enddo
  do i=1,64
     if((abs(real(a(i))) .gt. 1.0E-6 .or. (abs(imag(a(i)) - imag(res(i)))/abs(imag(a(i)))) .gt. 1.0E-6)) then
        print *, "NG"
     endif
  enddo
  print *, "OK"
end program main

subroutine init(a,b,c,res,mask)
  complex(kind=4),dimension(1:64) :: a,b,c,res
  integer,dimension(1:64) :: mask

  do i=1,64
     a(i) = cmplx(0,0,kind=4)
     b(i) = cmplx(i,-i,kind=4)
     c(i) = cmplx(i,i,kind=4)
     res(i) = cmplx(0,-1,kind=4)
     mask(i) = 1_4
  enddo
end subroutine init


subroutine test(a,b,c,mask)
  complex(kind=4), dimension(1:64) :: a, b, c
  integer,dimension(1:64) :: mask
  do i=1,64
     a(i) = b(i) / c(i)
  enddo

end subroutine test
