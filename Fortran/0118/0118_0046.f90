#define NI (32)

module data
  integer::n
end module data

subroutine sub(A)
  use data
  integer,dimension(NI)::A

  do i=1,NI
     A(i) = i + n
  end do
end subroutine sub

program main
  print *, "OK"
end program main
