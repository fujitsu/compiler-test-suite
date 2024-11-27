  complex,dimension(2,3)::h1,p=(4.,5.)
  real   ,dimension(2,3)::pp=4
  h1=cmplx(real(p))-(1.,1.)
  if (any(abs(h1-(3,-1))>0.0001))print *,'error'
  h1=     (real(p))-(1.,1.)
  if (any(abs(h1-(3,-1))>0.0001))print *,'error'
  h1=     pp-(1.,1.)
  if (any(abs(h1-(3,-1))>0.0001))print *,'error'
  h1=cmplx(pp-0)-(1.,1.)
  if (any(abs(h1-(3,-1))>0.0001))print *,'error'
  print *,'pass'
  end
