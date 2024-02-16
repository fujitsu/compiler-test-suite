#define N 64

#define EQUAL_CHECK(a, b) ((abs(a - b)/abs(a)) .gt. 1.0E-6)

program main
  complex(kind=2),dimension(1:N) :: a
  real(kind=2),dimension(1:N) :: res,dest
  integer,dimension(1:N) :: mask
  call init(a,res,mask)
  do i=1,2
     call test(dest,a,mask)
  enddo
  do i=1,N
     if(EQUAL_CHECK(dest(i),res(i))) then
        print *, "NG"
     endif
  enddo
  print *, "OK"
end program main

subroutine init(a,res,mask)
  complex(kind=2),dimension(1:N) :: a
  real(kind=2),dimension(1:N) :: res
  integer,dimension(1:N) :: mask
  do i=1,N
     if (i .gt. N/2) then
	a(i) = cmplx(i,i,kind=2)
        res(i) = real(2*i,kind=2)
     else
	a(i) = cmplx(-i,-i,kind=2)
        res(i) = real(-2*i,kind=2)
     endif
     mask(i) = 1_4
  enddo
end subroutine init

subroutine test(dest,a,mask)
  complex(kind=2), dimension(1:N) :: a
  real(kind=2), dimension(1:N) :: dest
  integer,dimension(1:N) :: mask
  do i=1,N
     dest(i) = real(a(i) + a(i))
  enddo
end subroutine test
