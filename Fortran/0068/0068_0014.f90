!
subroutine tree1(a,b) 
  implicit none
  integer,parameter::xp = 4 
  complex(xp)::a,b
  real(xp)::x=30.0
  a=b+sin(x) 
end subroutine tree1

subroutine tree2(a,b) 
  implicit none
  integer,parameter::xp = 4 
  complex(xp)::a,b,tmp
  real(xp)::x=30.0
  tmp=cmplx(sin(x),10)
  a=tmp+b 
end subroutine tree2

subroutine tree3(a) 
  implicit none
  integer,parameter::xp = 4 
  complex(xp)::a
  real(xp)::x=30.0
  a=x+cmplx(sin(x),10)
end subroutine tree3

subroutine tree4(a,b) 
  implicit none
  integer,parameter::xp = 4 
  complex(xp)::a,b
  real(xp)::x=30.0
  a=b+cmplx(sin(x),sin(x))
end subroutine tree4

subroutine tree5(a,b) 
  implicit none
  integer,parameter::xp = 4 
  complex(xp)::a,b
  real(xp)::x=30.0
  a=b+cmplx(sin(x),sin(sin(x)))
end subroutine tree5

subroutine tree6(a,b) 
  implicit none
  integer,parameter::xp = 8 
  complex(xp)::a,b
  real(xp)::x=30.0
  a=b+sin(x) 
end subroutine tree6

subroutine tree7(a,b) 
  implicit none
  integer,parameter::xp = 8 
  complex(xp)::a,b,tmp
  real(xp)::x=30.0
  tmp=cmplx(sin(x),10)
  a=tmp+b 
end subroutine tree7

subroutine tree8(a) 
  implicit none
  integer,parameter::xp = 8 
  complex(xp)::a
  real(xp)::x=30.0
  a=x+cmplx(sin(x),10)
end subroutine tree8

subroutine tree9(a,b) 
  implicit none
  integer,parameter::xp = 8 
  complex(xp)::a,b
  real(xp)::x=30.0
  a=b+cmplx(sin(x),sin(x))
end subroutine tree9

subroutine tree10(a,b) 
  implicit none
  integer,parameter::xp = 8 
  complex(xp)::a,b
  real(xp)::x=30.0
  a=b+cmplx(sin(x),sin(sin(x)))
end subroutine tree10

program main
  implicit none
  integer,parameter::xp = 4 
  integer,parameter::xp2 = 8
  complex(xp)::a,b
  complex(xp2)::a2,b2
  real(xp)::dist
  real(xp2)::dist2
  b=(1.0,2.0)
  b2=(1.0,2.0)

  call tree1(a,b)
  dist=abs(a-(1.196E-02,2.0))
  if(dist < 0.01) then
     print *,'tree1 : OK'
  else
     print *,'tree1 : NG a=',a
  endif

  call tree2(a,b)
  dist=abs(real(a)-(1.196E-02))
  if(dist < 0.01 .and. aimag(a)==12.0) then
     print *,'tree2  : OK'
  else
     print *,'tree2  : NG a=',a
  endif

  call tree3(a)
  dist=abs(real(a)-(29.01))
  if(dist < 0.01 .and. aimag(a)==10.0) then
     print *,'tree3  : OK'
  else
     print *,'tree3  : NG a=',a
  endif

  call tree4(a,b)
  dist=abs(a-(1.196E-02,1.011))
  if(dist < 0.01) then
     print *,'tree4  : OK'
  else
     print *,'tree4  : NG a=',a
  endif

  call tree5(a,b)
  dist=abs(a-(1.196E-02,1.165))
  if(dist < 0.01) then
     print *,'tree5  : OK'
  else
     print *,'tree5  : NG a=',a
  endif

  call tree6(a2,b2)
  dist2=abs(a2-(1.196E-02,2.0))
  if(dist2 < 0.01) then
     print *,'tree6 : OK'
  else
     print *,'tree6 : NG a2=',a2
  endif

  call tree7(a2,b2)
  dist2=abs(real(a2)-(1.196E-02))
  if(dist2 < 0.01 .and. aimag(a2)==12.0) then
     print *,'tree7  : OK'
  else
     print *,'tree7  : NG a2=',a2
  endif

  call tree8(a2)
  dist2=abs(real(a2)-(29.01))
  if(dist2 < 0.01 .and. aimag(a2)==10.0) then
     print *,'tree8  : OK'
  else
     print *,'tree8  : NG a2=',a2
  endif

  call tree9(a2,b2)
  dist2=abs(a2-(1.196E-02,1.011))
  if(dist2 < 0.01) then
     print *,'tree9  : OK'
  else
     print *,'tree9  : NG a2=',a2
  endif

  call tree10(a2,b2)
  dist2=abs(a2-(1.196E-02,1.165))
  if(dist2 < 0.01) then
     print *,'tree10  : OK'
  else
     print *,'tree10  : NG a2=',a2
  endif

end program main
