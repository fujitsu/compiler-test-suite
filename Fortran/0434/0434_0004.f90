call sss
print *,'pass'
contains
  subroutine sss
  real::z(10,10,10)
  z=1
  associate(x=>[integer*1::z])
if(any(x/=1)) print *,'err'
if(kind(x)/=1) print *,'err'
end associate
associate(x=>[integer*2::z])
if(any(x/=1)) print *,'err'
if(kind(x)/=2) print *,'err'
end associate
associate(x=>[integer::z])
if(any(x/=1)) print *,'err'
if(kind(x)/=4) print *,'err'
end associate
associate(x=>[integer*8::z])
if(any(x/=1)) print *,'err'
if(kind(x)/=8) print *,'err'
end associate
associate(x=>[real::z])
if(any(x/=1.0)) print *,'err'
if(kind(x)/=4) print *,'err'
end associate
associate(x=>[real*8::z])
if(any(x/=1.0)) print *,'err'
if(kind(x)/=8) print *,'err'
end associate
associate(x=>[real*16::z])
if(any(x/=1.0)) print *,'err'
if(kind(x)/=16) print *,'err'
end associate
end subroutine sss
end program