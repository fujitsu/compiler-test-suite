subroutine sub(a,b,c,d,n)
  real a(n), b(n), c(n,n), d(n,n)
  !OCL LOOP_PERFECT_NEST
  DO J=1,N
     A(J) = B(J)+1
     DO I=1,N
        C(J,I) = D(J,I)+A(J)
     ENDDO
  ENDDO
end subroutine sub

program main
  integer, parameter :: n = 100
  real a(n), b(n), c(n,n), d(n,n)

  b = 1; c = 2; d = 3;
  call sub(a,b,c,d,n)
  do j=1,n
     if (a(j).ne.2) then
        stop
     endif
     do i=1,n
        if (c(j,i) .ne. d(j,i)+a(j)) then
           stop
        endif
     end do
  enddo
  print *, "PASS"
end program main
