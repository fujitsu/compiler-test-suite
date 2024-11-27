  data xp,yp/2*-1./
  if (abs(xp+1)>0.0001)write(6,*) "NG"
  if (abs(yp+1)>0.0001)write(6,*) "NG"
  print *,'pass'
  end
