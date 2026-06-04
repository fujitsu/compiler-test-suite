subroutine sub(a,b,n)
  real a(n), b(n)
  !OCL PREFETCH_STRONG
  DO I=1,N
     A(I) = B(I)
  ENDDO
end subroutine sub

program main
  integer, parameter:: n = 1000
  real a(n), b(n)
  a = 1
  b = 2
  call sub(a,b,n)
  do i=1,n
     if (a(i).ne.2) then
        print *,'NG1'
     endif
  enddo
  print *,'PASS'
end
