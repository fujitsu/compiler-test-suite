#define NI (8)
#define ATTRIBUTE intent(in)

subroutine sub(A,n)
  integer,ATTRIBUTE::n
  integer,dimension(NI)::A

  do i=1,NI
     A(i) = i  + n
  end do
end subroutine sub

program main
  print *, "OK"
end program main
