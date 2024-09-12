module moda
 integer,protected,target :: aaa
 contains 
  function ccc(aaa) 
    integer,value :: aaa
    ccc=aaa
  end function
end module
module modb
 integer,protected :: bbb
 contains 
  subroutine sub1(aaa) 
    integer,value :: aaa
  end subroutine
end module
program main
  use moda
  use modb
  print *,'pass'
end program
