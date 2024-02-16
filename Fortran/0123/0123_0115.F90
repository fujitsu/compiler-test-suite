#define N 64

#define EQUAL_CHECK(a, b) ((abs(real(a) - real(b))/abs(real(a))) .gt. 1.0E-6 .or. (abs(imag(a) - imag(b))/abs(imag(a))) .gt. 1.0E-6)

program main
  complex(kind=2),dimension(1:N) :: dest
  complex(kind=2) :: b
  integer,dimension(1:N) :: mask

  interface
      subroutine test(dest, b, mask)
      complex(kind=2),dimension(N) :: dest
      complex(kind=2),value :: b
      integer,dimension(1:N) :: mask
      end subroutine test
  end interface

  call init(b,dest,mask)

  do i=1,2
     call test(dest, b, mask)
  enddo
  do i=1,N
     if(EQUAL_CHECK(dest(i), b)) then
        print *, "NG"
     endif
  enddo

  print *, "OK"

end program main

subroutine init(b,dest,mask)
  complex(kind=2),dimension(1:N) :: dest
  complex(kind=2) :: b
  integer,dimension(1:N) :: mask
  do i=1,N
     dest(i) = cmplx(0._4, 0._4, kind=2)
     mask(i) = 1_4
  enddo
  b = cmplx(real(N,kind=2),real(N,kind=2),kind=2)
end subroutine init

subroutine test(dest,b,mask)
  complex(kind=2),dimension(1:N) :: dest
  complex(kind=2),value :: b
  integer,dimension(1:N) :: mask
  do i=1,N
     dest(i) = b
  enddo
end subroutine test
