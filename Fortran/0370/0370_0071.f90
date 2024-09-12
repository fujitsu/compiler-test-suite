  type tp1
     integer(kind=4) :: ma(5) = (/1,2,3,4,5/)
     integer(kind=4) :: mb(3) = (/6,7,8/)
  end type tp1

  type(tp1) a
  type(tp1) b

  print *, a
  print *, b
end
