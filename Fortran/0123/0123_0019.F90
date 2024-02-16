#define N 64

#define EQUAL_CHECK(a, b) ((abs(real(a) - real(b))/abs(real(a))) .gt. 1.0E-6 .or. (abs(imag(a) - imag(b))/abs(imag(a))) .gt. 1.0E-6)

program main
  complex(kind=2),dimension(1:N) :: dest,a,b
  integer,dimension(1:N) :: mask
  call init(dest,a,b,mask)
  do i=1,2
     call test(dest,a,b,mask)
  enddo
  do i=1,N/2
     if(EQUAL_CHECK(a(i), dest(i))) then
        print *, "NG"
     endif
  enddo
  do i=N/2+1,N
     if(EQUAL_CHECK(b(i), dest(i))) then
        print *, "NG"
     endif
  enddo
  print *, "OK"
end program main

subroutine init(dest,a,b,mask)
  complex(kind=2),dimension(1:N) :: dest,a,b
  integer,dimension(1:N) :: mask
  do i=1,N/2
     dest(i) = (1.0, 1.0)
     a(i) = (1.0, 1.0)
     b(i) = (1.0, 1.0)
     mask(i) = 1_4
  enddo
  do i=N/2+1,N
     dest(i) = (-1.0, -1.0)
     a(i) = (1.0, 1.0)
     b(i) = (-1.0, -1.0)
     mask(i) = 1_4
  enddo
end subroutine init

subroutine test(dest,a,b,mask)
  complex(kind=2), dimension(N) :: dest,a,b
  integer,dimension(1:N) :: mask
  do i=1,N
     if(a(i) .eq. b(i)) then
       dest(i) = a(i)		
     else			
       dest(i) = b(i)	
     endif
  enddo
end subroutine test
