#define NI (32)

subroutine sub(A,n)
  type test
     integer::a
     integer::b
  end type test
  type(test)::n
  integer,dimension(NI)::A

  do i=1,NI
     A(i) = i
  end do
end subroutine sub

program main
  print *, "OK"
end program main
