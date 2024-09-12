  complex(4),parameter::r1=acos((1.0,1.0))
  complex(4),parameter::r2=asin((1.0,1.0))
  complex(4),parameter::r3=cosh((1.0,1.0))
  complex(4),parameter::r4=sinh((1.0,1.0))
  complex(4),parameter::r5=tan((1.0,1.0))
  complex(4),parameter::r6=tanh((1.0,1.0))
  real(4),parameter::d1=cosh(1.0)
  real(4),parameter::d2=sinh(1.0)

  if(acos((1.0,1.0))/=r1) print *,'err1'
  if(asin((1.0,1.0))/=r2)print *,'err2'
  if(tan((1.0,1.0))/=r5)print *,'err5'
  if(tanh((1.0,1.0))/=r6)print *,'err6'

  if(cosh(1.0)/=d1) print *,'err10'
  if(sinh(1.0)/=d2) print *,'err11'
  print *,"pass"
end program
