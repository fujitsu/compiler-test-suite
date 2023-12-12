subroutine s1
implicit real(16)(y)
  real(16),parameter:: am=+1.0,ap=-0.0
  !real(16),parameter:: ar=z'8000 0000 0000 0000 0000 0000 0000 0000' ,ai=ar
  real(16),parameter:: x1=am-am
  real(16),parameter:: x2=ap-am
  real(16),parameter:: x3=am-ap
  real(16),parameter:: x4=ap-ap
  real(16):: ym=1.0,yp=-0.0
  
write(1,'(z32.32)')x1
write(1,'(z32.32)')x2
write(1,'(z32.32)')x3
write(1,'(z32.32)')x4
!
  y1=ym-ym
  y2=yp-ym
  y3=ym-yp
  y4=yp-yp
write(1,'(z32.32)')y1
write(1,'(z32.32)')y2
write(1,'(z32.32)')y3
write(1,'(z32.32)')y4
!print *,x1,x2,x3,x4
!print *,y1,y2,y3,y4
end
subroutine s2
implicit real(y)
  real,parameter:: am=+1.0,ap=-0.0
  !real,parameter:: ar=z'8000 0000 0000 0000 0000 0000 0000 0000' ,ai=ar
  real,parameter:: x1=am-am
  real,parameter:: x2=ap-am
  real,parameter:: x3=am-ap
  real,parameter:: x4=ap-ap
  real:: ym=+1.0,yp=-0.0
  
write(2,'(z8.8)')x1
write(2,'(z8.8)')x2
write(2,'(z8.8)')x3
write(2,'(z8.8)')x4
!
  y1=ym-ym
  y2=yp-ym
  y3=ym-yp
  y4=yp-yp
write(2,'(z8.8)')y1
write(2,'(z8.8)')y2
write(2,'(z8.8)')y3
write(2,'(z8.8)')y4
!print *,x1,x2,x3,x4
!print *,y1,y2,y3,y4
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
character(*),parameter::m8='80000000000000000000000000000000'
character(*),parameter::m0='00000000000000000000000000000000'
character(*),parameter::m3='3FFF0000000000000000000000000000'
character(*),parameter::mb='BFFF0000000000000000000000000000'
character(*),parameter::m4='40000000000000000000000000000000'
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
if (c1(2)/=mb)print *,102
if (c1(3)/=m3)print *,103
if (c1(4)/=m0)print *,104
if (c2(1)/=m0)print *,201
if (c2(2)/=mb)print *,202
if (c2(3)/=m3)print *,203
if (c2(4)/=m0)print *,204
if (any(c1/=c2))print *,300
end
subroutine chk2
character(32/4) c1(4)
character(32/4) c2(4)
character(*),parameter::m0='00000000'
character(*),parameter::m8='80000000'
character(*),parameter::m3='3F800000'
character(*),parameter::mb='BF800000'
character(*),parameter::m4='40000000'
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
if (c1(2)/=mb)print *,1102
if (c1(3)/=m3)print *,1103
if (c1(4)/=m0)print *,1104
if (c2(1)/=m0)print *,1201
if (c2(2)/=mb)print *,1202
if (c2(3)/=m3)print *,1203
if (c2(4)/=m0)print *,1204
if (any(c1/=c2))print *,300
end
