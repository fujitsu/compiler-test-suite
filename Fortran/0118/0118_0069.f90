#define NI (8)
#define ATTRIBUTE SAVE

subroutine sub(A)
  integer,ATTRIBUTE::n=1
  integer,dimension(NI)::A

  do i=1,NI
     A(i) = i  + n
  end do
  
end subroutine sub

program main
  print *, "OK"
end program main
