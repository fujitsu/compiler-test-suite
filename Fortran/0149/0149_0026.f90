program main
  integer, parameter :: l = 3
  integer :: a=1
  integer(8) :: addr(l)
  addr(1) = loc(a)
  do concurrent(i=2:l)
     block
       integer :: a
       addr(i) = loc(a)
     end block
  end do
  print *,'pass'
end program main
