program main
  logical(kind=4) :: sum
  logical(kind=4),dimension(100) :: a
  data sum/.true./
  call sub(a)

  sum = all(a)
  print*, sum
end program main

subroutine sub(a)
  logical(kind=4),dimension(100) :: a
  a = .true.
  a(100) = .false.
end subroutine sub
