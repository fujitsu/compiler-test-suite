subroutine s1
implicit real(16)(y)
  real(16),parameter:: am=+0.0,ap=-1.0
  real(16),parameter:: x1=am*am
  real(16),parameter:: x2=ap*am
  real(16),parameter:: x3=am*ap
  real(16),parameter:: x4=ap*ap
  real(16):: ym=+0.0,yp=-1.0

write(1,'(z32.32)')x1
write(1,'(z32.32)')x2
write(1,'(z32.32)')x3
write(1,'(z32.32)')x4
  y1=ym*ym
  y2=yp*ym
  y3=ym*yp
  y4=yp*yp
write(1,'(z32.32)')y1
write(1,'(z32.32)')y2
write(1,'(z32.32)')y3
write(1,'(z32.32)')y4
end
subroutine s2
implicit real(y)
  real,parameter:: am=+0.0,ap=-1.0
  real,parameter:: x1=am*am
  real,parameter:: x2=ap*am
  real,parameter:: x3=am*ap
  real,parameter:: x4=ap*ap
  real:: ym=+0.0,yp=-1.0

write(2,'(z8.8)')x1
write(2,'(z8.8)')x2
write(2,'(z8.8)')x3
write(2,'(z8.8)')x4
  y1=ym*ym
  y2=yp*ym
  y3=ym*yp
  y4=yp*yp
write(2,'(z8.8)')y1
write(2,'(z8.8)')y2
write(2,'(z8.8)')y3
write(2,'(z8.8)')y4
end
call s1
call s2
call chk1
call chk2
print *,'pass'
  end
subroutine chk1
character(32) c1(4)
character(32) c2(4)
character(*),parameter::m0='00000000000000000000000000000000'
character(*),parameter::m8='80000000000000000000000000000000'
character(*),parameter::m3='3FFF0000000000000000000000000000'
character(*),parameter::mb='BFFF0000000000000000000000000000'
character(*),parameter::m4='C0000000000000000000000000000000'
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
if (c1(2)/=m8)print *,102
if (c1(3)/=m8)print *,103
if (c1(4)/=m3)print *,104
if (c2(1)/=m0)print *,201
if (c2(2)/=m8)print *,202
if (c2(3)/=m8)print *,203
if (c2(4)/=m3)print *,204
if (any(c1/=c2))print *,300
end
subroutine chk2
character(32/4) c1(4)
character(32/4) c2(4)
character(*),parameter::m0='00000000'
character(*),parameter::m8='80000000'
character(*),parameter::m3='3F800000'
character(*),parameter::mb='BF800000'
character(*),parameter::m4='C0000000'
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
if (c1(1)/=m0)print *,11101
if (c1(2)/=m8)print *,11102
if (c1(3)/=m8)print *,11103
if (c1(4)/=m3)print *,11104
if (c2(1)/=m0)print *,11201
if (c2(2)/=m8)print *,11202
if (c2(3)/=m8)print *,11203
if (c2(4)/=m3)print *,11204
if (any(c1/=c2))print *,1300
end
