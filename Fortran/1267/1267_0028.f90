subroutine sub(a,b,c,d,n)
  real a(n), b(n), c(n), d(n)
!OCL EVAL
DO I=1,N
A(I)=A(I)*B(I)+A(I)+C(I)
ENDDO
!OCL EVAL
DO I=1,N
A(I)=A(I)+B(I)+C(I)+D(I)
ENDDO
!OCL EVAL
DO I=1, N
A(I)=B(I)/10
ENDDO
end subroutine sub

program main
  integer, parameter::n = 100
  real a(n), b(n), c(n), d(n)
  a=1
  b=2
  c=3
  d=4
  call sub(a,b,c,d,n)
  do i=1,n
     if (a(i) .ne. 0.2) then
        print *, i, a(i)
        stop
     endif
  end do
  print *, 'PASS'
  
end program main
