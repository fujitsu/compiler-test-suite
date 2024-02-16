#define N 64

#define EQUAL_CHECK(a, b) ((abs(a - b)/abs(a)) .gt. 1.0E-6)

program main
  real(kind=2),dimension(N) :: a,res
  real*4 aa,bb
  complex(kind=2),dimension(N) :: b
  integer,dimension(1:N) :: mask
  call init(a,b,res,mask)
  do i=1,2
     call test(a,b,mask)
  enddo
  do i=1,N
     if(EQUAL_CHECK(a(i), res(i))) then
        aa = a(i)
        bb = res(i)
        write(6,*) aa,bb
     endif
  enddo
  print *, "OK"
end program main

subroutine init(a,b,res,mask)
  real(kind=2),dimension(1:N) :: a,res
  complex(kind=2),dimension(1:N) :: b
  integer,dimension(1:N) :: mask
  real(kind=2) :: rr,ri,tt
  real(kind=4) :: t4
  do i=1,N
     a(i) = 0._4
     if (i .gt. N/2) then
        b(i) = cmplx(i,-i,kind=2)
     else
        b(i) = cmplx(-i,i,kind=2)
     endif
     rr = abs(real(b(i)))
     ri = abs(imag(b(i)))
     if (rr .ge. ri) then
        if (rr .eq. 0) then
           res(i) = 0
        else
           ri = ri/rr
           tt = ri*ri+1
           t4 = tt
           tt = sqrt(t4)
           res(i) = tt*rr
        endif
     else
        rr = rr/ri
        tt = rr * rr + 1.0
        t4 = rr
        tt = sqrt(t4)
        res(i) = tt*ri
     endif
     mask(i) = 1_4
  enddo
end subroutine init

subroutine test(a,b,mask)
  real(kind=2), dimension(1:N) :: a
  complex(kind=2), dimension(1:N) :: b
  integer,dimension(1:N) :: mask
  do i=1,N
     a(i) = abs(b(i))
  enddo
end subroutine test
