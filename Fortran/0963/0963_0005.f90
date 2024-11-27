  integer :: n
  associate(a=>5)
  associate(b=>a)
  n = SUM((/(b,b=1,n)/)) 
  print *,n
  end associate
  end associate
  end
