
  type :: t3
     integer :: n
  end type

  type t23456789
     integer :: n
  end type 

  type, extends(t23456789) :: t2
     type(t3) :: x
  end type 


print *,'pass'
end
