  integer::n
  associate(a=>5)
  n = SUM((/(a,a=1,n)/)) 
  print *,n
  end associate
  end
