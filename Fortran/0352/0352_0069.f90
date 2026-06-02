module m1
  type t2
     complex(kind=8) :: c8
     logical(kind=2) :: l2
  end type t2
  type t1
     real(kind=8) :: r8
     type(t2) :: tv = t2((0.0_8, 0.0_8), .FALSE._2)
  end type t1
  type(t1) val(1000000)
end module m1

program main
  use m1
  print *, val(9999)
end program main
