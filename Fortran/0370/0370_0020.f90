  type,bind(c):: tp0
     integer :: mem1 = 5
     integer :: mem2 = 6
     integer :: mem3 = 7
  end type tp0

  type,bind(c):: tp1
     integer :: mem1
     integer :: mem2
     integer :: mem3
  end type tp1

  type(tp0) :: a0,b0,c0
  type(tp1) :: a1,b1,c1

  common /abc/ a1,b1,c1

  print *, a0
  print *, b0
  print *, c0

  print *, a1
  print *, b1
  print *, c1
end
