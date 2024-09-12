module moda
 integer,protected :: aaa
  contains
  subroutine ccc() 
    integer :: n(10)
    equivalence(aaa,n(1))
  end subroutine
end module
program main
  use moda
  call ccc()
  print *,'pass'
end program
