#define NI (8)
#define ATTRIBUTE dimension(NI)

subroutine sub(A)
  integer,ATTRIBUTE::n
  integer,dimension(NI)::A

  do i=1,NI
     A(i) = i  + n(1)
  end do
end subroutine sub

program main
  print *, "OK"
end program main
