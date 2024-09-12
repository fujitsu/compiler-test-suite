  type tp1
     real(kind=4) :: ma    = 3.0
     real(kind=8) :: mb(3) = 4.0
  end type tp1

  type, extends(tp1):: tp2
     real(kind=4) :: mm(2) = [1.0,2.0]
     real(kind=8) :: mn = 5.0
  end type tp2

  type(tp2) a(2)

  print *, a(1)
  print *, a(2)
end
