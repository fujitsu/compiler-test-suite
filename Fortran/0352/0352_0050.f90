module m1
  type t1
     integer(kind=8) :: i8 = 4
     real(kind=4) :: r4 = 5.0_4
  end type t1
  type(t1) val
end module m1

program main
  use m1
  print *, val
end program main
