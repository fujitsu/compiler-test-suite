#define N 64

#define EQUAL_CHECK(a, b) ((abs(real(a) - real(b))/abs(real(a))) .gt. 1.0E-6 .or. (abs(imag(a) - imag(b))/abs(imag(a))) .gt. 1.0E-6)

program main
  complex(kind=2),dimension(1:N) :: dest,src,res
  integer,dimension(1:N) :: mask
  call init(dest,src,res,mask)
  do i=1,2
     call test(dest,src,mask)
  enddo
  do i=1,N
     if(EQUAL_CHECK(dest(i), res(i))) then
        print *, "NG"
     endif
  enddo
  print *, "OK"
end program main

subroutine init(dest,src,res,mask)
  complex(kind=2),dimension(1:N) :: dest,src,res
  integer,dimension(1:N) :: mask
  do i=1,N
     dest(i) = cmplx(0,0,kind=2)
     if (i .gt. N/2) then
        src(i) = cmplx(i,i,kind=2)
	res(i) = cmplx(-i,-i,kind=2)
     else
        src(i) = cmplx(i,-i,kind=2)
	res(i) = cmplx(-i,i,kind=2)
     endif
     mask(i) = 1_4
  enddo
end subroutine init

subroutine test(dest,src,mask)
  complex(kind=2), dimension(1:N) :: dest,src
  integer,dimension(1:N) :: mask
  do i=1,N
     dest(i) = - src(i)
  enddo
end subroutine test
