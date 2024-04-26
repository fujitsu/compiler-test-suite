module m1
  type t1
     character(len=10) :: ca = 'Test'
     complex(kind=8) :: c16
  end type t1
  type(t1) val(1000)
end module m1

program main
  use m1
  print *, val(500)
end program main
