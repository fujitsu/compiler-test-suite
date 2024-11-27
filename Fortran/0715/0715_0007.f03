module moda
 integer,protected :: n
end module
program bbb
  use moda
  assign 99 to n
  print *,'pass'
99 continue
end program
