subroutine sub(a,b,c,n)
  real a(n), b(n), c(n)
!OCL UNROLL(2)
  DO I=1,N
     A(I) = B(I) + C(I)
  ENDDO
end subroutine sub

program main
  integer, parameter::n = 100
  real a(n), b(n), c(n)
  a=0
  b=1
  c=3
  call sub(a,b,c,n)
  do i=1,n
     if (a(i) .ne. 4) then
        print *, i, a(i)
        stop
     endif
  end do
  print *, 'PASS'
  
end program main
