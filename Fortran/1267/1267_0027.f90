subroutine sub(a,n)
  real a(n)
  !OCL CLONE(N==10)
  DO I=1,N
     A(I) = I
  ENDDO
end subroutine sub

program main
  integer, parameter::n = 100
  real a(n)
  a=0
  call sub(a,10)
  do i=1,10
     if (a(i) .ne. i) then
        print *, i, a(i)
        stop
     endif
  end do
  print *, 'PASS'
  
end program main
