#define NI (8)
#define ATTRIBUTE 

subroutine sub(A,n)
  integer::n
  integer,dimension(NI)::A

  do i=1,NI
     A(i) = i + n
  end do
end subroutine sub

program main
  print *, "OK"
end program main
