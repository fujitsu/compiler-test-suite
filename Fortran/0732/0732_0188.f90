  integer:: IU4V=1
  if (any((/(/( (1, 2 ,I=1,1), 3 , 4 ,I2=IU4V,1 )/),5/)/=(/1,2,3,4,5/)))print *,'error'
print *,'pass'
  end
