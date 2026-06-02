subroutine sub(a,b,c,n,m)
  real a(n), b(n,m), c(n,m)
  !OCL SCACHE_ISOLATE_WAY(L2=10)
  !OCL SCACHE_ISOLATE_ASSIGN(A)
  DO J=1,M
     DO I=1,N
        A(I)= A(I)+ B(I,J) * C(I,J)
     ENDDO
  ENDDO
  !OCL END_SCACHE_ISOLATE_ASSIGN
  !OCL END_SCACHE_ISOLATE_WAY
end subroutine sub

program main
  integer, parameter::n = 100
  integer, parameter::m = 100
  real a(n), b(n,m), c(n,m)
  a=1
  b=2
  c=3
  call sub(a,b,c,n,m)
  do i=1,n
     if (a(i) .ne. 601.) then
        print *, i, a(i)
        stop
     endif
  end do
  print *, 'PASS'
  
end program main
