#define N 64

#define EQUAL_CHECK(a, b) ((abs(real(a) - real(b))/abs(real(a))) .gt. 1.0E-6 .or. (abs(imag(a) - imag(b))/abs(imag(a))) .gt. 1.0E-6)

program main
  complex(kind=2),dimension(1:N) :: dest, a
  complex(kind=2) :: b
  integer,dimension(1:N) :: mask

  call init(dest,a,b,mask)

  do i=1,2
     call test(dest,a,b,mask)
  enddo
  do i=1,N
     if(EQUAL_CHECK(dest(i), cmplx(real(i,kind=2),real(i,kind=2),kind=2) + b)) then
        print *, "NG"
     endif
  enddo
  print *, "OK"

end program main

subroutine init(dest,a,b,mask)
  complex(kind=2),dimension(1:N) :: dest,a
  complex(kind=2) :: b
  integer,dimension(1:N) :: mask
  do i=1,N
     dest(i) = cmplx(0._4, 0._4, kind=2)
     a(i) = cmplx(real(i,kind=2), real(i,kind=2), kind=2)
     mask(i) = 1_4
  enddo
  b = cmplx(real(N,kind=2), real(N,kind=2), kind=2)
end subroutine init

subroutine test(dest,a,b,mask)
  complex(kind=2), dimension(1:N) :: dest,a
  complex(kind=2) :: b
  integer,dimension(1:N) :: mask
  do i=1,N
     dest(i) = a(i) + b
  enddo
end subroutine test
