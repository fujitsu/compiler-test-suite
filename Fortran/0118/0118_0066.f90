#define NI (8)
#define ATTRIBUTE parameter

subroutine sub(A)
  integer,ATTRIBUTE::n=1
  integer,ATTRIBUTE::m=2
  integer,dimension(NI)::A

  do i=1,NI
     A(i) = i  + n
  end do
  
end subroutine sub

program main
  print *, "OK"
end program main
