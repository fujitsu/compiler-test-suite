module module_test1
use,intrinsic:: iso_fortran_env

  type :: type_test
     integer(8) :: n
  end type type_test

  type type_test1
     integer(8) :: n
     type(lock_type) :: xy
  end type type_test1

  type, extends(type_test1) :: type_test2
     type(type_test) :: x
     type(lock_type) :: xx
  end type type_test2

end module module_test1

print *,'pass'
end
