module m1
  type t2
     integer(kind=4) :: t2i4 = 8
  end type t2
  type t1
     character(len=2) :: ca = 'A'
     integer(kind=4) :: i4 = 9
     type(t2) :: tv
  end type t1
  type(t1) val(1)
end module m1

program main
  use m1
  print *, val(1)
end program main
