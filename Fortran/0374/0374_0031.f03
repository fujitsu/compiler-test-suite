module moda
 integer,protected :: aaa =1
  contains
  function ccc(aaa) 
    integer,intent(in) :: aaa
    entry aaa1(aaa)
    ccc=aaa
  end function
end module
program main
  use moda
  integer :: iii
  iii = aaa1(aaa)
  print *,'pass'
end program
