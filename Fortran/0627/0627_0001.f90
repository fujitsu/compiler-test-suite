module test_op
  implicit none
  integer :: operator=1
end module test_op

program main
  use test_op,only:operator
  implicit none
  write(1,*) "Hello,World"
print *,'pass'
end
