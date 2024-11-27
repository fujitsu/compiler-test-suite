module m1

use, intrinsic::iso_fortran_env
  type :: t23456789
     integer :: n
  end type

  type t1
     integer :: n
     type(lock_type) :: dummy
  end type

  type, extends(t1) :: t2
     type(t23456789) :: x
  end type

type (t2):: var
end 

print *,'pass'
end
