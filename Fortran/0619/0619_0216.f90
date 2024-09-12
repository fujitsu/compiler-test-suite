  type ty
  integer :: xx
  end type
 
  type tty
  integer :: ii=-1
  type(ty), allocatable:: TY_ITEM
  integer :: LL=4
  end type
print *,'pass'
contains
function fun1()
 TYPE(tty),pointer:: PTR
 
 allocate(ptr)
end function
END
 
