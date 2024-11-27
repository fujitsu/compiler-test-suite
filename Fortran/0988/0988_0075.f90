  integer a(10),b(10)
  a = (/1,2,3,4,5,6,7,8,9,10/)
  b = 0
  forall (i=1:10:2)
  b(i) = a(i)
  end forall
  end

