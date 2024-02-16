#define N 64

#define EQUAL_CHECK(a, b) ((abs(real(a) - real(b))/abs(real(a))) .gt. 1.0E-6 .or. (abs(imag(a) - imag(b))/abs(imag(a))) .gt. 1.0E-6)

program main
  complex(kind=2),dimension(1:N) :: a,b,res
  integer,dimension(1:N) :: mask
  call init(a,b,mask)
  do i=1,2
     call test(a,b,res,mask)
  enddo
  do i=1,N
     if(EQUAL_CHECK(cmplx(i,i,kind=2), res(i))) then
        print *, "NG"
     endif
  enddo
  print *, "OK"
end program main

subroutine init(a,b,mask)
  complex(kind=2),dimension(1:N) :: a,b
  integer,dimension(1:N) :: mask
  do i=1,N
     a(i) = cmplx(i,0,kind=2)
     b(i) = cmplx(0,i,kind=2)
     mask(i) = 1_4
  enddo
end subroutine init

subroutine test(a,b,res,mask)
  complex(kind=2), dimension(1:N) :: a, b, res
  complex(kind=2) :: tmp
  integer,dimension(1:N) :: mask
  do i=1,N
     if(a(i) .ne. b(i)) then
       tmp = cmplx(i,i,kind=8)
     else
       tmp = cmplx(0,0,kind=8)
     endif
     res(i) = tmp
  enddo
end subroutine test
