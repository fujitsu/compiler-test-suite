  integer(kind=4)           :: aa = 10_4
  integer(kind=4),parameter :: ca = 30_4

  type tp1
     integer(kind=4) :: ma = 3_4
     integer(kind=4) :: mb = 4_4
  end type tp1

  type(tp1) a
  print *, a
  print *,aa
  print *,ca
end
