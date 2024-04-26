program main
  complex(kind=4),dimension(1:64) :: dest, a
  complex(kind=4) :: b
  integer,dimension(1:64) :: mask

  call init(dest,a,b,mask)

  do i=1,2
     call test(dest,a,b,mask)
  enddo
  do i=1,64
     if(((abs(real(dest(i)) - real( cmplx(real(i,kind=4),real(i,kind=4),kind=4) + b))/abs(real(dest(i)))) .gt. 1.0E-6 .or. (abs(imag(dest(i)) - imag( cmplx(real(i,kind=4),real(i,kind=4),kind=4) + b))/abs(imag(dest(i)))) .gt. 1.0E-6)) then
        print *, "NG"
     endif
  enddo
  print *, "OK"

end program main

subroutine init(dest,a,b,mask)
  complex(kind=4),dimension(1:64) :: dest,a
  complex(kind=4) :: b
  integer,dimension(1:64) :: mask

  do i=1,64
     dest(i) = cmplx(0._4, 0._4, kind=4)
     a(i) = cmplx(real(i,kind=4), real(i,kind=4), kind=4)
     mask(i) = 1_4
  enddo
  b = cmplx(real(64,kind=4), real(64,kind=4), kind=4)
end subroutine init


subroutine test(dest,a,b,mask)
  complex(kind=4), dimension(1:64) :: dest,a
  complex(kind=4) :: b
  integer,dimension(1:64) :: mask








  do i=1,64
     dest(i) = a(i) + b
  enddo

end subroutine test
