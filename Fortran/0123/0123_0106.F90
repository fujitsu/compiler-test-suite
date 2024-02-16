#define N 64

#define EQUAL_CHECK(a, b) ((abs(real(a) - real(b))/abs(real(a))) .gt. 1.0E-6 .or. (abs(imag(a) - imag(b))/abs(imag(a))) .gt. 1.0E-6)

program main
  complex(kind=2),dimension(N) :: a,b,res
  integer,dimension(1:N) :: mask
  call init(a,b,res,mask)
  do i=1,2
     call test(a,b,mask)
  enddo
  do i=1,N
     if(EQUAL_CHECK(a(i), res(i))) then
        print *, "NG"
     endif
  enddo
  print *, "OK"
end program main

subroutine init(a,b,res,mask)
  complex(kind=2),dimension(1:N) :: a,b,res
  integer,dimension(1:N) :: mask
  do i=1,N
     a(i) = cmplx(0,0,kind=2)
     if (i .gt. N/2) then
        b(i) = cmplx(i,i,kind=2)
	res(i) = cmplx(-2*i,-2*i,kind=2)
     else
        b(i) = cmplx(-i,-i,kind=2)
	res(i) = cmplx(2*i,2*i,kind=2)
     endif
     mask(i) = 1_4
  enddo
end subroutine init

subroutine test(a,b,mask)
  complex(kind=2), dimension(1:N) :: a, b
  integer,dimension(1:N) :: mask
  do i=1,N
     a(i) = a(i) - b(i)
  enddo
end subroutine test
