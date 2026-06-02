subroutine sub(a,b,n,k)
  real a(n), b(n)
  !OCL PREFETCH_STRIDE(SOFT)
  DO I=1,N,K
     A(I) = B(I)
  ENDDO
end subroutine sub

program main
  integer, parameter:: n = 1000
  real a(n), b(n)
  a = 1
  b = 2
  call sub(a,b,n,3)
  do i=1,n
     if (mod(i,3).eq.1) then
        if (a(i).ne.2) then
           print *,'NG1'
        endif
     else 
        if (a(i).ne.1) then
           print *,'NG2'
        endif
     endif
  enddo
  print *,'PASS'
end
