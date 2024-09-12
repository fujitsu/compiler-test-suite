  type tp1
     integer(kind=4) :: ma(5) = (/1,0,3,0,5/)
  end type tp1

  type(tp1) a
  type(tp1) b

  print *, a
  print *, b
end
