  integer a(10),b(10)
  a = (/1,1,0,1,0,0,1,0,1,0/)
  wh1 : where (a==0)
    b = 1
  elsewhere wh1
    b = 0
  endwhere wh1

  print *,a
  print *,b
  end
