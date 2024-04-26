  type x1
  integer i
  end type
  type(x1)::xx2(2)
  xx2(2)%i=1
  print *,xx2(2)
  end
