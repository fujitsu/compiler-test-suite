subroutine sub(a,b,indx,n)
  real a(n),b(n)
  integer indx(n)
  !OCL PREFETCH_INDIRECT
  DO I=1,N
     A(INDX(I)) = B(INDX(I))
  ENDDO
end subroutine sub

program main
  integer, parameter :: n = 100
  real a(n),b(n)
  integer indx(n)
  do i=1,n
     indx(i) = i
  end do
  a = 0
  b = 1
  call sub(a,b,indx,n)
  if (all(a.eq.1)) then
     print *,'PASS'
  else 
     print *,'NG'
  endif
end
