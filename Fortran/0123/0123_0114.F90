#define N 64

#define EQUAL_CHECK(a, b) ((abs(real(a) - real(b))/abs(real(a))) .gt. 1.0E-6 .or. (abs(imag(a) - imag(b))/abs(imag(a))) .gt. 1.0E-6)

program main
  complex(kind=2),dimension(1:N) :: dest, a
  integer,dimension(1:N) :: mask

  call init(dest,a,mask)

  do i=1,2
     call test(dest,a,mask)
  enddo
  do i=1,N
     if(EQUAL_CHECK(dest(i), cmplx(real(i,kind=2),real(i,kind=2),kind=2) + cmplx(1._4, 2._4, kind=2))) then
        print *, "NG"
     endif
  enddo
  print *, "OK"

end program main

subroutine init(dest,a,mask)
  complex(kind=2),dimension(1:N) :: dest,a
  integer,dimension(1:N) :: mask
  do i=1,N
     dest(i) = cmplx(0._4, 0._4, kind=2)
     a(i) = cmplx(real(i,kind=2), real(i,kind=2), kind=2)
     mask(i) = 1_4
  enddo
end subroutine init

subroutine test(dest,a,mask)
  complex(kind=2), dimension(1:N) :: dest,a
  integer,dimension(1:N) :: mask
  do i=1,N
     dest(i) = a(i) + cmplx(1._4, 2._4, kind=2)
  enddo
end subroutine test
