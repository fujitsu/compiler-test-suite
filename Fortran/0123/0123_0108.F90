#define N 64

#define EQUAL_CHECK(a, b) ((abs(real(a) - real(b))/abs(real(a))) .gt. 1.0E-6 .or. (abs(imag(a) - imag(b))/abs(imag(a))) .gt. 1.0E-6)

program main
  complex(kind=2),dimension(N) :: b
  complex(kind=2) :: a,res
  integer,dimension(1:N) :: mask
  call init(a,b,res,mask)
  do i=1,2
     call test(a,b,mask)
  enddo
  if(res .eq. cmplx(0._4, 0._4, kind=2)) then 
    if (a .ne. res) then
       print *, "NG"
    endif
  else 
    if(EQUAL_CHECK(a, res)) then
       print *, "NG"
    endif
  endif
  print *, "OK"
end program main

subroutine init(a,b,res,mask)
  complex(kind=2),dimension(1:N) :: b
  complex(kind=2) :: a,res
  integer,dimension(1:N) :: mask

  a = cmplx(0._4, 0._4, kind=2)
  if ( mod(N,2_4) == 0) then
    res = cmplx(0._4, 0._4, kind=2)
  else
    res = cmplx(2._4, 2._4, kind=2)
  endif
  do i=1,N
     if (i .gt. N/2) then
        b(i) = cmplx(1._4,1._4,kind=2)
     else
        b(i) = cmplx(-1._4,-1._4,kind=2)
     endif
     mask(i) = 1_4
  enddo
end subroutine init

subroutine test(a,b,mask)
  complex(kind=2), dimension(1:N) :: b
  complex(kind=2) :: a
  integer,dimension(1:N) :: mask
  do i=1,N
     a = a + b(i)
  enddo
end subroutine test
