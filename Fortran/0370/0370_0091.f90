  type tp1
     integer(kind=4) :: i4a = 3
     integer(kind=8) :: i8a = 8
     integer(kind=4) :: i4b = 4
     integer(kind=4) :: i4c = 5
     integer(kind=1) :: i1a = 1
  end type tp1

  type tp2
     integer(kind=8) :: i8a = 8
     integer(kind=4) :: i4a = 10
  end type tp2

  type tc
     type(tp1) :: t1
     type(tp2) :: t2(2,3)
     integer(kind=1) :: i1x = 2
  end type tc

  type(tc) a(2)
  type(tc) b(2,2)
  print *, a
  print *, b
end
