SUBROUTINE LOOP(A,B,C,N)
  REAL*4 A(10),B(10),C(10)
  !OCL ARRAY_DECLARATION_OPT
  DO I=1,N
     A(I) = B(I) + C(I)
  ENDDO
END SUBROUTINE LOOP

program main
  integer, parameter::n = 10
  real a(n), b(n), c(n)
  a=0
  b=1
  c=3
  call loop(a,b,c,n)
  do i=1,n
     if (a(i) .ne. 4) then
        print *, i, a(i)
        stop
     endif
  end do
  print *, 'PASS'
  
end program main
