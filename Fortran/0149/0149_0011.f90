program main
  integer :: i, j
  integer(8) :: addr(2)
  addr(1) = loc(i)
  addr(2) = loc(j)
  block
    volatile :: i
    integer, volatile :: j
    if (addr(1) /= loc(i)) print *,1
    if (addr(2) == loc(j)) print *,2
  end block
  print *,'pass'
end program main
