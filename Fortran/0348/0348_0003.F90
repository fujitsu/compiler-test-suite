  real,parameter::x=34.e+6
  real,parameter::b=b"1100"
  real::c1=(x)
  real::c2=(b)
  if ( real(cmplx(c1,c2)) == 0) then
    print *,'NG'
  else
    print *,'PASS'
  endif
  end
