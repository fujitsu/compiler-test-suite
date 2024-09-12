  type tp0
     integer(kind=4) :: i41(2)
  end type tp0

  type tc
     type(tp0) :: ta = tp0((/1,4/))
  end type tc

  type(tc) :: a(3)
  type(tc) :: b(2) = tc(tp0((/7,8/)))

  print *, a(1)
  print *, a(2)
  print *, a(3)
  print *, b(1)
  print *, b(2)
end
