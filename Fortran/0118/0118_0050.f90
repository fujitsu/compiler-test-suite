#define NI (32)

subroutine sub(A,n)
  real::n
  integer,dimension(NI)::A

  do i=1,NI
     if ( n==0.0) then
        A(i) = i
     end if
  end do
end subroutine sub

program main
  print *, "OK"
end program main
