  type tp0
     integer(kind=4) :: aa(5) = (/(i,i=8,4,-1)/)
  end type tp0

  type(tp0) a0(2)
  print *, a0
end

