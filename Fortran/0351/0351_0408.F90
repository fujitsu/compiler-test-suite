program main
  complex(kind=8),dimension(1:64) :: dest, a
  integer,dimension(1:64) :: mask

  call init(dest,a,mask)

  do i=1,2
     call test(dest,a,mask)
  enddo
  do i=1,64
     if(((abs(real(dest(i)) - real( cmplx(real(i,kind=8),real(i,kind=8),kind=8) + cmplx(1._8, 2._8, kind=8)))/abs(real(dest(i)))) .gt. 1.0D-13 .or. (abs(imag(dest(i)) - imag( cmplx(real(i,kind=8),real(i,kind=8),kind=8) + cmplx(1._8, 2._8, kind=8)))/abs(imag(dest(i)))) .gt. 1.0D-13)) then
        print *, "NG"
     endif
  enddo
  print *, "OK"

end program main

subroutine init(dest,a,mask)
  complex(kind=8),dimension(1:64) :: dest,a
  integer,dimension(1:64) :: mask

  do i=1,64
     dest(i) = cmplx(0._8, 0._8, kind=8)
     a(i) = cmplx(real(i,kind=8), real(i,kind=8), kind=8)
     mask(i) = 1_4
  enddo
end subroutine init


subroutine test(dest,a,mask)
  complex(kind=8), dimension(1:64) :: dest,a
  integer,dimension(1:64) :: mask








  do i=1,64
     dest(i) = a(i) + cmplx(1._8, 2._8, kind=8)
  enddo

end subroutine test
