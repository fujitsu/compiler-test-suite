program pro
real,parameter::x=0.84147098
real::result=ACOS(x)
  if( .not.(result>0.4 .and. result<0.6))  print *,101
  print *, "pass"
    end

