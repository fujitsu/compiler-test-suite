#define NI (8)
#define ATTRIBUTE pointer

subroutine sub(A)
  integer,ATTRIBUTE::n
  integer,dimension(NI)::A

  do i=1,NI
     A(i) = i + n
  end do
end subroutine sub

program main
  print *, "OK"
end program main
