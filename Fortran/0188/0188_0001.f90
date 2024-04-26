  type :: t23456789
     integer :: n
  end type

  type t1
     integer :: nn
  end type 

  type, extends(t1) :: t2
     type(t23456789) :: x
  end type 


print *,'pass'
end
