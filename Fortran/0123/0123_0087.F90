#define N 64

#define EQUAL_CHECK(a, b) ((abs(real(a) - real(b))/abs(real(a))) .gt. 1.0E-6 .or. (abs(imag(a) - imag(b))/abs(imag(a))) .gt. 1.0E-6)

program main
  real(kind=2),dimension(1:N) :: a,b
  complex(kind=2),dimension(1:N) :: res,dest
  integer,dimension(1:N) :: mask
  call init(a,b,res,mask)
  do i=1,2
     call test(dest,a,b,mask)
  enddo
  do i=1,N
     if(EQUAL_CHECK(dest(i),res(i))) then
        print *, "NG"
     endif
  enddo
  print *, "OK"
end program main

subroutine init(a,b,res,mask)
  real(kind=2),dimension(1:N) :: a,b
  complex(kind=2),dimension(1:N) :: res
  integer,dimension(1:N) :: mask
  do i=1,N
     if (i .gt. N/2) then
        a(i) = real(i,kind=2)
        b(i) = real(i,kind=2)
	res(i) = cmplx(i,i,kind=2)
     else
        a(i) = real(-i,kind=2)
        b(i) = real(-i,kind=2)
	res(i) = cmplx(-i,-i,kind=2)
     endif
     mask(i) = 1_4
  enddo
end subroutine init

subroutine test(dest,a,b,mask)
  real(kind=2), dimension(1:N) :: a, b
  complex(kind=2), dimension(1:N) :: dest
  integer,dimension(1:N) :: mask
  do i=1,N
     dest(i) = cmplx(a(i), b(i))
  enddo
end subroutine test
