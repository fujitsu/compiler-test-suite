  parameter(b=0.)
  bb=0.;bbb=-0.0
  a3=SIGN(1.0,-0.0)
  a4=SIGN(1.0,-b)
  a5=SIGN(1.0,-bb)
  a6=SIGN(1.0,bbb)
if (umin_mode(0.0)) then
  if (.false.) then
  if(SIGN(1.0,-0.0)/=-1.0)write(6,*) "NG"
  if(SIGN(1.0,-b)/=-1.0)write(6,*) "NG"
  if(SIGN(1.0,-bb)/=-1.0)write(6,*) "NG"
  if(SIGN(1.0,bbb)/=-1.0)write(6,*) "NG"
  if(a3           /=-1.0)write(6,*) "NG"
  if(a4           /=-1.0)write(6,*) "NG"
  if(a5           /=-1.0)write(6,*) "NG"
  if(a6           /=-1.0)write(6,*) "NG"
   endif
else
  if(SIGN(1.0,-0.0)/=1.0)write(6,*) "NG"
  if(SIGN(1.0,-b)/=1.0)write(6,*) "NG"
  if(SIGN(1.0,-bb)/=1.0)write(6,*) "NG"
  if(SIGN(1.0,bbb)/=1.0)write(6,*) "NG"
  if(a3           /=1.0)write(6,*) "NG"
  if(a4           /=1.0)write(6,*) "NG"
  if(a5           /=1.0)write(6,*) "NG"
  if(a6           /=1.0)write(6,*) "NG"
endif
  print *,'pass'
contains
logical function umin_mode(r)
umin_mode=.false.
if (sign(2.0,-r)<1.0) umin_mode=.true.
end function
end
