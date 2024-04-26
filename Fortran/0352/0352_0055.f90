module m1
  type t2
     character(len=3) :: ca
     integer(kind=2) :: i2 = 100
     complex(kind=4) :: c8
  end type t2
  type t1
     type(t2) :: tv
  end type t1
  type(t1) val
end module m1

program main
  use m1
  print *, val
end program main
