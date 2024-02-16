#define NI (32)

subroutine sub(A,n)
  character::n
  integer,dimension(NI)::A

  do i=1,NI
     if (n=='a') then
        A(i) = i
     end if
  end do
end subroutine sub

program main
  print *, "OK"
end program main
