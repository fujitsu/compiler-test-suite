module m1
  type t1
     logical(kind=4) :: l4 = .TRUE.
     complex(kind=4) :: c8
  end type t1
  type(t1) val
end module m1

program main
  use m1
  print *, val
end program main
