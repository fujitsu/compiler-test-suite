  type tp1
     integer(kind=4) :: ma
     integer(kind=4) :: mb = 3
  end type tp1

  type, extends(tp1) :: tp2
     integer(kind=4) :: mc = 4
  end type tp2

  type, extends(tp2) :: tp3
     integer(kind=4) :: md = 5
     integer(kind=4) :: me(2)
     integer(kind=4) :: mf = 10
  end type tp3

  type tpx
     integer(kind=8) :: ia(3) = (/1,2,3/)
     integer(kind=8) :: ib
     integer(kind=8) :: ic(2) = 5
     type(tp2) :: ta = tp2(tp1(4,5), mc = 6)
     type(tp3) :: tb = tp3(ma = 10, mb = 11, mc = 12, md = 13, me = 14, mf = 15)
  end type tpx

  type(tpx) t1
  print *, t1
end

