module m1

  type :: t
     integer :: n
  end type 

  type type_test1
     integer :: n
  end type type_test1

  type, extends(type_test1) :: type_test2
     type(t) :: x
  end type type_test2

end 

print *,'pass'
end
