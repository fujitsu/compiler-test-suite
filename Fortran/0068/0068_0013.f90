subroutine add1(a,b,c)
  implicit none
  integer,parameter::xp = 4 
  complex(xp)::a,b,c
  a = b + c
end subroutine add1

subroutine add1_2(a,b,c)
  implicit none
  integer,parameter::xp = 8
  complex(xp)::a,b,c
  a = b + c
end subroutine add1_2

subroutine add2(a,b,c,d)
  implicit none
  integer,parameter::xp = 4 
  complex(xp)::a,b,c,d
  d = b + c
  a = d + c
end subroutine add2

subroutine add2_2(a,b,c,d)
  implicit none
  integer,parameter::xp = 8
  complex(xp)::a,b,c,d
  d = b + c
  a = d + c
end subroutine add2_2

subroutine add3(a,b,c)
  implicit none
  integer,parameter::xp = 4 
  complex(xp)::a,b,c,tmp
  tmp = b + c
  a = tmp + c
end subroutine add3

subroutine add3_2(a,b,c)
  implicit none
  integer,parameter::xp = 8
  complex(xp)::a,b,c,tmp
  tmp = b + c
  a = tmp + c
end subroutine add3_2

subroutine sub1(a,b,c)
  implicit none
  integer,parameter::xp = 4
  complex(xp)::a,b,c
  a = b - c
end subroutine sub1

subroutine sub1_2(a,b,c)
  implicit none
  integer,parameter::xp = 8
  complex(xp)::a,b,c
  a = b - c
end subroutine sub1_2

subroutine sub2(a,b,c,d)
  implicit none
  integer,parameter::xp = 4
  complex(xp)::a,b,c,d
  d = b - c 
  a = d - c
end subroutine sub2

subroutine sub2_2(a,b,c,d)
  implicit none
  integer,parameter::xp = 8
  complex(xp)::a,b,c,d
  d = b - c 
  a = d - c
end subroutine sub2_2

subroutine sub3(a,b,c)
  implicit none
  integer,parameter::xp = 4
  complex(xp)::a,b,c,tmp
  tmp = b - c
  a = tmp - c
end subroutine sub3

subroutine sub3_2(a,b,c)
  implicit none
  integer,parameter::xp = 8
  complex(xp)::a,b,c,tmp
  tmp = b - c
  a = tmp - c
end subroutine sub3_2

subroutine mul1(a,b,c)
  implicit none
  integer,parameter::xp = 4 
  complex(xp)::a,b,c
  a = b * c
end subroutine mul1

subroutine mul1_2(a,b,c)
  implicit none
  integer,parameter::xp = 8
  complex(xp)::a,b,c
  a = b * c
end subroutine mul1_2

subroutine mul2(a,b,c,d)
  implicit none
  integer,parameter::xp = 4 
  complex(xp)::a,b,c,d
  d = b * c
  a  = d * c
end subroutine mul2

subroutine mul2_2(a,b,c,d)
  implicit none
  integer,parameter::xp = 8
  complex(xp)::a,b,c,d
  d = b * c
  a  = d * c
end subroutine mul2_2

subroutine mul3(a,b,c)
  implicit none
  integer,parameter::xp = 4 
  complex(xp)::a,b,c,tmp
  tmp = b * c
  a = tmp * c
end subroutine mul3

subroutine mul3_2(a,b,c)
  implicit none
  integer,parameter::xp = 8
  complex(xp)::a,b,c,tmp
  tmp = b * c
  a = tmp * c
end subroutine mul3_2

subroutine div1(a,b,c)
  implicit none
  integer,parameter::xp = 4 
  complex(xp)::a,b,c
  a = b / c
end subroutine div1

subroutine div1_2(a,b,c)
  implicit none
  integer,parameter::xp = 8
  complex(xp)::a,b,c
  a = b / c
end subroutine div1_2

subroutine div2(a,b,c,d)
  implicit none
  integer,parameter::xp = 4 
  complex(xp)::a,b,c,d
  d = b / c
  a = d / c
end subroutine div2

subroutine div2_2(a,b,c,d)
  implicit none
  integer,parameter::xp = 8
  complex(xp)::a,b,c,d
  d = b / c
  a = d / c
end subroutine div2_2

subroutine div3(a,b,c)
  implicit none
  integer,parameter::xp = 4 
  complex(xp)::a,b,c,tmp
  tmp = b / c
  a = tmp / c
end subroutine div3

subroutine div3_2(a,b,c)
  implicit none
  integer,parameter::xp = 8
  complex(xp)::a,b,c,tmp
  tmp = b / c
  a = tmp / c
end subroutine div3_2

program main
  implicit none
  integer,parameter::xp1 = 4
  integer,parameter::xp2 = 8
  complex(xp1)::a,b,c,d
  complex(xp2)::a2,b2,c2,d2
  real(xp1)::dist
  real::ar,ai
  b=(1.0,2.0)
  c=(2.0,1.0)
  b2=(2.0,3.0)
  c2=(3.0,2.0)

  call add1(a,b,c)
  if (a==(3.0,3.0)) then
     print *,'add1 : OK'
  else
     print *,'add1 : NG a=',a
  endif

  call add1_2(a2,b2,c2)
  if (a2==(5.0,5.0)) then
     print *,'add1_2 : OK'
  else
     print *,'add1_2 : NG, a2=',a2
  endif

  call add2(a,b,c,d)
  if (a==(5.0,4.0)) then
     print *,'add2 : OK'
  else
     print *,'add2 : NG a=',a
  endif

  call add2_2(a2,b2,c2,d2)
  if (a2==(8.0,7.0)) then
     print *,'add2_2 : OK'
  else
     print *,'add2_2 : NG, a2=',a2
  endif

  call add3(a,b,c)
  if (a==(5.0,4.0)) then
     print *,'add3 : OK'
  else
     print *,'add3 : NG a=',a
  endif

  call add3_2(a2,b2,c2)
  if (a2==(8.0,7.0)) then
     print *,'add3_2 : OK'
  else
     print *,'add3_2 : NG, a2=',a2
  endif

  call sub1(a,b,c) 
  if (a==(-1.0,1.0)) then
     print *,'sub1 : OK'
  else
     print *,'sub1 : NG a=',a
  endif

  call sub1_2(a2,b2,c2)
  if (a2==(-1.0,1.0)) then
     print *,'sub1_2 : OK'
  else
     print *,'sub1_2 : NG, a2=',a2
  endif

  call sub2(a,b,c,d)
  if (a==(-3.0,0.0)) then
     print *,'sub2 : OK'
  else
     print *,'sub2 : NG a=',a
  endif

  call sub2_2(a2,b2,c2,d2)
  if (a2==(-4.0,-1.0)) then
     print *,'sub2_2 : OK'
  else
     print *,'sub2_2 : NG, a2=',a2
  endif

  call sub3(a,b,c) 
  if(a==(-3.0,0.0)) then
     print *,'sub3 : OK'
  else
     print *,'sub3 : NG a=',a
  endif

  call sub3_2(a2,b2,c2)
  if (a2==(-4.0,-1.0)) then
     print *,'sub3_2 : OK'
  else
     print *,'sub3_2 : NG, a2=',a2
  endif

  call mul1(a,b,c)
  if(a==(0.0,5.0)) then
     print *,'mul1 : OK'
  else
     print *,'mul1 : NG a=',a
  endif

  call mul1_2(a2,b2,c2)
  if (a2==(0.0,13.0)) then
     print *,'mul1_2 : OK'
  else
     print *,'mul1_2 : NG, a2=',a2
  endif

  call mul2(a,b,c,d)
  if(a==(-5.0,10.0)) then
       print *,'mul2 : OK'
  else
     print *,'mul2 : NG a=',a
  endif

  call mul2_2(a2,b2,c2,d2)
  if (a2==(-26.0,39.0)) then
     print *,'mul2_2 : OK'
  else
     print *,'mul2_2 : NG, a2=',a2
  endif

  call mul3(a,b,c)
  if (a==(-5.0,10.0)) then
     print *,'mul3 : OK'
  else
     print *,'mul3 : NG a=',a
  endif

  call mul3_2(a2,b2,c2)
  if (a2==(-26.0,39.0)) then
     print *,'mul3_2 : OK'
  else
     print *,'mul3_2 : NG, a2=',a2
  endif

  call div1(a,b,c)

  ar = real(a)
  ai = imag(a)
  if(((ar.gt.0.7999999).and.(ar.lt.0.8000001)).and.((ai.gt.0.5999999).and.(ai.lt.0.6000001))) then
     print *,'div1 : OK'
  else
     print *,'div1 : NG a=',a
  endif

  call div1_2(a2,b2,c2)
  dist = abs(a2-(0.92,0.38))
  if(dist < 0.01) then
     print *,'div1_2 : OK'
  else
     print *,'div1_2 : NG, a2=',a2
  endif

  call div2(a,b,c,d)
  dist = abs(a-(0.439,8.00E-02))
  if (dist < 0.01) then
     print *,'div2 : OK'
  else
     print *,'div2 : NG a=',a
  endif

  call div2_2(a2,b2,c2,d2)
  dist = abs(a2-(0.272,-5.325E-002))
  if(dist < 0.01) then
     print *,'div2_2 : OK'
  else
     print *,'div2_2 : NG, a2=',a2
  endif

  call div3(a,b,c)
  dist = abs(a-(0.440,8.000E-02))
  if(dist < 0.01) then
     print *,'div3 : OK'
  else
     print *,'div3 : NG a=',a
  endif

  call div3_2(a2,b2,c2)
  dist = abs(a2-(0.272,-5.325E-002))
  if(dist < 0.01) then
     print *,'div3_2 : OK'
  else
     print *,'div3_2 : NG a2=',a2
  endif

end program main
