module moda
 integer,protected :: aaa=2
 save aaa
end module
program main
  use moda
  integer :: iii
  if (aaa.ne.2) write(6,*) "NG"
  print *,'pass'
end program
