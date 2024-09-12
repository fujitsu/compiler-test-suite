  type tp1
  end type tp1

  type tc
     integer :: ia = 100
     type(tp1) :: xa(3) = tp1()
     type(tp1) :: xb
  end type tc

  type(tp1) :: t1
  type(tc) :: t2

  print *, t1
  print *, t2
end

