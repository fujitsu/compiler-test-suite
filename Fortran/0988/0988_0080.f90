  integer a(10),b(10),c(10)
  a = (/1,1,0,1,0,0,1,0,1,0/)
  b = (/0,0,1,0,1,1,0,1,0,1/)
  where (a==0)
    where (b==1)
      c = 1 
    end where
  endwhere

  print *,a
  print *,b
  print *,c
  end
