subroutine s1
implicit logical(y)
  real    (16),parameter:: cm=-0.0,cp=0.0
  complex(16),parameter:: am=(cm,cp),ap=(cm,cp)
  logical,parameter:: x1=am/=am
  logical,parameter:: x2=ap/=am
  logical,parameter:: x3=am/=ap
  logical,parameter:: x4=ap/=ap
  complex(16):: ym=-0.0,yp=0.0

write(1,'(z8.8)')x1
write(1,'(z8.8)')x2
write(1,'(z8.8)')x3
write(1,'(z8.8)')x4
  y1=ym/=ym
  y2=yp/=ym
  y3=ym/=yp
  y4=yp/=yp
write(1,'(z8.8)')y1
write(1,'(z8.8)')y2
write(1,'(z8.8)')y3
write(1,'(z8.8)')y4
end
subroutine s2
implicit logical(y)
  real    (4),parameter:: cm=-0.0,cp=0.0
  complex(4),parameter:: am=(cm,cp),ap=(cm,cp)
  logical,parameter:: x1=am/=am
  logical,parameter:: x2=ap/=am
  logical,parameter:: x3=am/=ap
  logical,parameter:: x4=ap/=ap
  complex   :: ym=-0.0,yp=0.0

write(2,'(z8.8)')x1
write(2,'(z8.8)')x2
write(2,'(z8.8)')x3
write(2,'(z8.8)')x4
  y1=ym/=ym
  y2=yp/=ym
  y3=ym/=yp
  y4=yp/=yp
write(2,'(z8.8)')y1
write(2,'(z8.8)')y2
write(2,'(z8.8)')y3
write(2,'(z8.8)')y4
end
subroutine s3
implicit logical(y)
  real    (8),parameter:: cm=-0.0,cp=0.0
  complex(8),parameter:: am=(cm,cp),ap=(cm,cp)
  logical,parameter:: x1=am/=am
  logical,parameter:: x2=ap/=am
  logical,parameter:: x3=am/=ap
  logical,parameter:: x4=ap/=ap
  complex(8)   :: ym=-0.0,yp=0.0

write(3,'(z8.8)')x1
write(3,'(z8.8)')x2
write(3,'(z8.8)')x3
write(3,'(z8.8)')x4
  y1=ym/=ym
  y2=yp/=ym
  y3=ym/=yp
  y4=yp/=yp
write(3,'(z8.8)')y1
write(3,'(z8.8)')y2
write(3,'(z8.8)')y3
write(3,'(z8.8)')y4
end
call s1
call s2
call s3
call chk1
call chk2
call chk3
print *,'pass'
  end
subroutine chk1
character(32/4) c1(4)
character(32/4) c2(4)
character(*),parameter::m1='00000001'
character(*),parameter::m0='00000000'
integer::u=1
rewind u
read(u,'(a)') c1(1)
read(u,'(a)') c1(2)
read(u,'(a)') c1(3)
read(u,'(a)') c1(4)
read(u,'(a)') c2(1)
read(u,'(a)') c2(2)
read(u,'(a)') c2(3)
read(u,'(a)') c2(4)
if (c1(1)/=m0)print *,101
if (c1(2)/=m0)print *,102
if (c1(3)/=m0)print *,103
if (c1(4)/=m0)print *,104
if (c2(1)/=m0)print *,201
if (c2(2)/=m0)print *,202
if (c2(3)/=m0)print *,203
if (c2(4)/=m0)print *,204
if (any(c1/=c2))print *,300
end
subroutine chk2
character(32/4) c1(4)
character(32/4) c2(4)
character(*),parameter::m1='00000001'
character(*),parameter::m0='00000000'
integer::u=2
rewind u
read(u,'(a)') c1(1)
read(u,'(a)') c1(2)
read(u,'(a)') c1(3)
read(u,'(a)') c1(4)
read(u,'(a)') c2(1)
read(u,'(a)') c2(2)
read(u,'(a)') c2(3)
read(u,'(a)') c2(4)
if (c1(1)/=m0)print *,1101
if (c1(2)/=m0)print *,1102
if (c1(3)/=m0)print *,1103
if (c1(4)/=m0)print *,1104
if (c2(1)/=m0)print *,1201
if (c2(2)/=m0)print *,1202
if (c2(3)/=m0)print *,1203
if (c2(4)/=m0)print *,1204
if (any(c1/=c2))print *,1300
end
subroutine chk3
character(32/4) c1(4)
character(32/4) c2(4)
character(*),parameter::m1='00000001'
character(*),parameter::m0='00000000'
integer::u=3
rewind u
read(u,'(a)') c1(1)
read(u,'(a)') c1(2)
read(u,'(a)') c1(3)
read(u,'(a)') c1(4)
read(u,'(a)') c2(1)
read(u,'(a)') c2(2)
read(u,'(a)') c2(3)
read(u,'(a)') c2(4)
if (c1(1)/=m0)print *,2101
if (c1(2)/=m0)print *,2102
if (c1(3)/=m0)print *,2103
if (c1(4)/=m0)print *,2104
if (c2(1)/=m0)print *,2201
if (c2(2)/=m0)print *,2202
if (c2(3)/=m0)print *,2203
if (c2(4)/=m0)print *,2204
if (any(c1/=c2))print *,2300
end
