  type :: t23456789
     integer :: n
  end type

  type t1
     integer :: n
  end type

  type, extends(t1) :: t2
     class(t23456789),allocatable :: x
     class(t23456789),allocatable :: xx(:)
  end type

print *,'pass'
end
