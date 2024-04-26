
module minimal_example
  implicit none


  integer :: i

  type :: foo
     procedure(foo_t), pointer :: fail
  end type foo

  abstract interface
     subroutine foo_t(this)
       import :: foo
       class(foo) ::this
     end subroutine foo_t
  end interface

end module minimal_example

module intermediate
  use minimal_example, only: i
end module intermediate

module test_min
  use intermediate
  use minimal_example, only: i
end module test_min

print *,'pass'
end
