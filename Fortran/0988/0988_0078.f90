  integer a(10),b(10)
  a = (/1,1,0,1,0,0,1,0,1,0/)
  where (a==0)
    b = 1
  elsewhere (a==1)
    b = 0
  endwhere

  print *,a
  print *,b
  end
