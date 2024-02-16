subroutine sub(n,a)
  integer::n,m
  integer,dimension(64)::a
  do i=1,64
     a(i) = 0
  end do
end subroutine sub

program main
  integer,dimension(64)::a
  call sub(1,a)
  print *, "OK"
end program main
