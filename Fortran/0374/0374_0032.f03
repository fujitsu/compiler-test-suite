module moda
 integer,protected :: aaa = 1
end module
program main
  use moda
  integer :: iii
  iii = ccc(aaa)
  print *,'pass'
 contains 
  function ccc(aaa) 
    integer,intent(in) :: aaa
    ccc=aaa
  end function
end program
