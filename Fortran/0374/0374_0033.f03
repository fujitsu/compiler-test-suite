module moda
 integer,protected :: aaa
 save aaa
end module
program main
  use moda
  integer :: iii
  print *,'pass'
end program
