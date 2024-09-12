module moda
 integer,protected,target :: aaa
end module
module modb
 integer,protected :: bbb
 target :: bbb
end module
program main
  use moda
  use modb
  print *,'pass'
end program
