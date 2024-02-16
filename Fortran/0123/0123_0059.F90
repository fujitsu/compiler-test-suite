#define N 64

#define EQUAL_CHECK(a, b) ((abs(real(a) - real(b))/abs(real(a))) .gt. 1.0E-6 .or. (abs(imag(a) - imag(b))/abs(imag(a))) .gt. 1.0E-6)

program main
  complex(kind=2),dimension(1:N) :: a,b,res
  complex(kind=4),dimension(1:N) :: aa,bb
  integer,dimension(1:N) :: mask
  call init(a,b,aa,bb,res,mask)
  do i=1,2
     call test(a,b,aa,bb,mask)
  enddo
  do i=1,N
     if(EQUAL_CHECK(a(i),res(i))) then
        print *, "NG"
     endif
  enddo
  print *, "OK"
end program main

subroutine init(a,b,aa,bb,res,mask)
  complex(kind=2),dimension(1:N) :: a,b,res
  complex(kind=4),dimension(1:N) :: aa,bb
  integer,dimension(1:N) :: mask
  do i=1,N
     a(i) = cmplx(i,i,kind=2)
     b(i) = cmplx(i,-i,kind=2)
     res(i) = cmplx(2_4*i*i*i,-2_4*i*i*i,kind=2)
     aa(i) = cmplx(i,i,kind=4)
     bb(i) = cmplx(i,-i,kind=4)
     mask(i) = 1_4
  enddo
end subroutine init

subroutine test(a,b,aa,bb,mask)
  complex(kind=2), dimension(1:N) :: a, b
  complex(kind=4), dimension(1:N) :: aa, bb
  integer,dimension(1:N) :: mask
  do i=1,N
     a(i) = a(i) * b(i)
     aa(i) = aa(i) * bb(i)
  enddo
end subroutine test
