module m1
  type t2
     logical(kind=8) :: l = .FALSE.
     integer(kind=8) :: t2i4 = 0
     real(kind=8) :: r8 = 0.0_8
  end type t2
  type t1
     type(t2) :: tv
  end type t1
  type(t1) val(1000000)
end module m1

program main
  use m1
  print *, val(999999)
end program main
