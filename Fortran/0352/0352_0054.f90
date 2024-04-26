module m1
  type t2
     integer(kind=4) :: t2i4
     real(kind=4) :: r4
  end type t2
  type t1
     logical(kind=4) :: l4 = .TRUE.
     type(t2) :: tv = t2(8, 3.0_4)
  end type t1
  type(t1) val(1000)
end module m1

program main
  use m1
  print *, val(999)
end program main
