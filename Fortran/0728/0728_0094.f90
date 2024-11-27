  write(1,*)KIND(CEILING(3.))
  write(1,*)KIND(CEILING(3.,KIND=8))
 if (KIND(CEILING(3.))/=4)write(6,*) "NG"
 if (KIND(CEILING(3.,KIND=8))/=8)write(6,*) "NG"
  print *,'pass'
  end
