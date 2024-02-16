#define N 64

#define EQUAL_CHECK(a, b) ((abs(real(a) - real(b))/abs(real(a))) .gt. 1.0E-6 .or. (abs(imag(a) - imag(b))/abs(imag(a))) .gt. 1.0E-6)

program main
  complex*8 a(N),b(N),res(N)
  integer,dimension(1:N) :: mask
  call init(a,b,res,mask)
  do i=1,2
     call test(a,b,mask)
  enddo
  do i=1,N
     if(EQUAL_CHECK(a(i),res(i))) then
        print *, "NG"
     endif
  enddo
  print *, "OK"
end program main

subroutine init(a,b,res,mask)
  complex*8 a(1:N),b(1:N),res(1:N)
  integer,dimension(1:N) :: mask
  do i=1,N
     a(i) = 0.
     if (i .gt. N/2) then
        b(i) = cmplx(i,i)
        res(i) = cmplx(i,-i)
     else
        b(i) = cmplx(-i,-i)
        res(i) = cmplx(-i,i)
     endif
     mask(i) = 1_4
  enddo
end subroutine init

subroutine test(a,b,mask)
  complex*8 a(1:N),b(1:N)
  integer,dimension(1:N) :: mask
  do i=1,N
     a(i) =  conjg(b(i))
  enddo
end subroutine test
