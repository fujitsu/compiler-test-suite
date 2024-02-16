#define N 64

#define EQUAL_CHECK(a, b) ((abs(real(a) - real(b))/abs(real(a))) .gt. 1.0E-6 .or. (abs(imag(a) - imag(b))/abs(imag(a))) .gt. 1.0E-6)

program main
  complex(kind=2),dimension(N) :: a,res
  logical(kind=2),dimension(N) :: b
  integer,dimension(1:N) :: mask
  call init(a,b,res,mask)
  do i=1,2
     call test(a,b,res,mask)
  enddo
  do i=1,N
     if(i .gt. N/2) then
          if(EQUAL_CHECK(cmplx(real(i,kind=2),real(i,kind=2),kind=2), res(i))) then
             print *, "NG"
          endif
     else
          if(cmplx(0._4,0._4,kind=2) .ne. res(i)) then
             print *, "NG"
          endif
     endif
  enddo	
  print *, "OK"
end program main

subroutine init(a,b,res,mask)
  complex(kind=2),dimension(1:N) :: a,res
  logical(kind=2),dimension(1:N) :: b
  integer,dimension(1:N) :: mask
  do i=1,N
     a(i) = cmplx(real(i,kind=2),real(i,kind=2),kind=2)
     res(i) = cmplx(0._4,0._4,kind=2)
     if(i .gt. N/2) then
          b(i) = .TRUE.
     else
	  b(i) = .FALSE.
     endif
     mask(i) = 1_4
  enddo
end subroutine init

subroutine test(a,b,res,mask)
  complex(kind=2),dimension(1:N) :: a,res
  logical(kind=2),dimension(1:N) :: b
  integer,dimension(1:N) :: mask
  do i=1,N
     if(b(i) .eqv. .TRUE.) then
       res(i) = a(i)
     endif
  enddo
end subroutine test
