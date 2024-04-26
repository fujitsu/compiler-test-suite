program pro
real,parameter::x=0.84147098
real::result=ASIN(x)
  if( .not.(result>0.9 .and. result<1.1))  print *,101
  print *, "pass"
    end

