module m1

  type :: type_test
     integer :: n
  end type type_test

  type t1
     integer :: n
  end type

  type, extends(t1) :: t2
     type(type_test) :: x
  end type

end 

print *,'pass'
end
