#define N 64

#define EQUAL_CHECK(a, b) (abs(real(a)) .gt. 1.0E-3 .or. (abs(imag(a) - imag(b))/abs(imag(a))) .gt. 1.0E-6)

program main
  complex(kind=2),dimension(N) :: a,b,c,res
  integer,dimension(1:N) :: mask
  call init(a,b,c,res,mask)
  do i=1,2
     call test(a,b,c,mask)
  enddo
  do i=1,N
     if(EQUAL_CHECK(a(i),res(i))) then
        print *, "NG"
     endif
  enddo
  print *, "OK"
end program main

subroutine init(a,b,c,res,mask)
  complex(kind=2),dimension(1:N) :: a,b,c,res
  integer,dimension(1:N) :: mask
  do i=1,N
     a(i) = cmplx(0,0,kind=2)
     b(i) = cmplx(i,-i,kind=2)
     c(i) = cmplx(i,i,kind=2)
     res(i) = cmplx(0,-1,kind=2)
     mask(i) = 1_4
  enddo
end subroutine init

subroutine test(a,b,c,mask)
  complex(kind=2), dimension(1:N) :: a, b, c
  integer,dimension(1:N) :: mask
  do i=1,N
     a(i) = b(i) / c(i)
  enddo
end subroutine test
