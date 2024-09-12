module tmd
  integer :: mi = 40
  type tp0
     real :: ra(1) = 100.0
     integer :: ia(3) = 200
  end type tp0
end module tmd

function func(num)
  use tmd
  type(tp0) func
  integer num

  func%ia(2) = num
end function func

program test
  use tmd
  type(tp0) mt, func
  integer :: num = 5
  mt = func (num)

  print *, mi
  print *, mt
end program test
