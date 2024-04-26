subroutine sub(n,a)
  integer,dimension(64)::a
  do i=1,64
     a(i) = 0
  end do
  a(n) = 0
end subroutine sub

program main
  integer,dimension(64)::a
  call sub(1,a)
  print *, "OK"
end program main
