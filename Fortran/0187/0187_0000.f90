module module_test1

  type :: type_test
     integer :: n
  end type type_test

  type type_test1
     integer :: n
  end type type_test1

  type, extends(type_test1) :: type_test2
     type(type_test) :: x
  end type type_test2

end module module_test1

print *,'pass'
end
