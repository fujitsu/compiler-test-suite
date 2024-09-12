  type tp0
     integer(kind=1) :: aa = 10
     integer(kind=4) :: bb(5) = 3
     integer(kind=4) :: cc(5) = (/1,2,3,4,5/)
  end type tp0

  type tp1
     integer(kind=8) :: xx
  end type tp1

  type tp2
     type(tp1) :: kk1 = tp1(5)
     integer(kind=8) :: kk2 = 100 
  end type tp2

  type tp3
     type(tp2) :: zz1 = tp2(tp1(8),9)
     type(tp2) :: zz2(2) = tp2(tp1(10),11)
     type(tp2) :: zz3(2) = (/tp2(tp1(2),3),tp2(tp1(4),5)/)
  end type tp3

  type(tp0) a0
  type(tp3) a1
  print *, a0
  print *, a1
end
