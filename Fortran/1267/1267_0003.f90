subroutine sub(a,b,n)
  real*4 a(n), b(3,n)
  integer n
  !OCL SIMD_USE_MULTIPLE_STRUCTURES
  DO I=1,N
     A(I) = B(1,I) + B(2,I) + B(3,I)
  ENDDO
end 

program main
  integer, parameter :: n = 100
  real*4 a(n), b(3,n)
  do i=1,n
     a(i) = 0
     b(1,i) = 1
     b(2,i) = 2
     b(3,i) = 3  
  end do
  call sub(a,b,n)
  if (all(a.eq.6)) then
     print *, 'PASS'
  else 
     print *,a
  endif
end program main
