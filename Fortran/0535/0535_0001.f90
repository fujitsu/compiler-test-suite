  type:: x
     integer(2)::x1
  end type x
  class (x),pointer   ::a
  class (x),pointer   ::b
  type(x),pointer   ::c
  type(x),pointer   ::d
  allocate(a,c)
  b=>a
  d=>c
  if(associated(a, b).neqv.associated(c, d)) print *,"err"
  print *,'pass'
end
