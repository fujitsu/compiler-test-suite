subroutine sub
  integer(kind=8),target,dimension(10) :: a1 = (/1,2,3,4,5,6,7,8,9,10/)
  integer(kind=8),pointer,dimension(:) :: p1 => a1
  integer(kind=8),pointer,dimension(:) :: p2 => a1(1:3:2)
  integer(kind=8),pointer,dimension(:) :: p3 => a1(2:9:3)

  print *, p1
  print *, p2
  print *, p3
end subroutine sub

call sub
end program
