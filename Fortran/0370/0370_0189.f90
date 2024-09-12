
program main
  type tp1
     sequence
     integer(kind=4) :: i41 = 3_4
     integer(kind=4) :: i42 = 4_4
  end type tp1
  type tp2
     sequence
     integer(kind=4) :: i43 = 5_4
  end type tp2
  type tc
     sequence
     type(tp1) :: t1
     type(tp2) :: t2
     integer(kind=8) :: ii = 10
  end type tc
  type(tc),target,dimension(3) :: aa
  type(tc),pointer,dimension(:) :: p1
  type(tc),pointer,dimension(:) :: p2=>aa

  p1=>aa
  print *, aa
  print *, p1
  print *, p2
end
