complex,parameter::c1=acos((1.0,0.0))
complex,parameter::c2=acos((1.0_8,0.0_8))
complex,parameter::c3=acos((1.0_16,0.0_16))
complex,parameter::c4=asin((1.0,0.0))
  write(3,*) acos((1.0,0.0))
  write(3,*) acos((1.0_8,0.0_8))
  write(3,*) acos((1.0_16,0.0_16))

  write(3,*) asin((1.0,0.0))
  write(3,*) asin((1.0_8,0.0_8))
  write(3,*) asin((1.0_16,0.0_16))
  end
