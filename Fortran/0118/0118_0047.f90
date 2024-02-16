#define NI (32)

subroutine sub(A,n)
  integer,dimension(NI)::n
  integer,dimension(NI)::A

  do i=1,NI
     A(i) = i + n(i)
  end do
end subroutine sub

program main
  print *, "OK"
end program main
