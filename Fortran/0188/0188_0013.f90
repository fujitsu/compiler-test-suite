  type :: y23456789
     integer :: ny
  end type

  type :: t23456789
     type(y23456789):: nt
  end type

  type t1
     integer :: nn
  end type 

  type, extends(t1) :: t2
     type(t23456789) :: x
  end type 


print *,'pass'
end
