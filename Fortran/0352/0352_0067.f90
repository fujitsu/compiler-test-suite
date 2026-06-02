module m1
  type t1
     logical(kind=8) :: l8
     complex(kind=16) :: c32 = (0.0_16, 0.0_16)
  end type t1
  type(t1) val(1000000)
end module m1

program main
  use m1
  print *, val(500000)
end program main
