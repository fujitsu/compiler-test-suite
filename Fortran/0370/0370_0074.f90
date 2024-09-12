  type tp1
     integer(kind=4) :: ma(5) = (/1,2,3,4,5/)
  end type tp1

  type(tp1) a(2)
  type(tp1) b

  print *, a
  print *, b
end
