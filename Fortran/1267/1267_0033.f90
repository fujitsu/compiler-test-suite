subroutine sub(a,b,c,n,m,l)
  real a(n,m,l),b(n,m,l),c(n,m,l)
  !$OMP PARALLEL
  !$OMP DO PRIVATE(K,J,I) COLLAPSE(3)
  DO K=1,L ! L = 2
     DO J=1,M ! M = 512
        DO I=1,N ! N =32
           A(I,J,K)=B(I,J,K)+C(I,J,K)
        ENDDO
     ENDDO
  ENDDO
  !$OMP END DO
  !$OMP END PARALLEL
end subroutine sub

program main
  integer, parameter :: n = 32
  integer, parameter :: m = 512
  integer, parameter :: l = 2
  real a(n,m,l),b(n,m,l),c(n,m,l)
  b = 3
  c = 5
  call sub(a,b,c,n,m,l)
  if (.not.all(a.eq.8)) then
     print *, a(1,1,1)
  endif
  print *,"PASS"
end
