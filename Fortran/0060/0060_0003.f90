implicit real(16)(y)
  complex(16),parameter:: d=  0 * (-1.0_16,-1.0_16)  
  real(16),parameter:: ar=0,ai=0,br=-1._16,bi=-1.16
  real(16),parameter:: x11=ar*br,x12=ai*bi,x1=x11-x12
  real(16),parameter:: x21=ar*bi,x22=br*ai,x2=x21+x22
  real(16):: yar=0,yai=0,ybr=-1._16,ybi=-1.16
  
if (d/=0) print *,106
write(1,'(z32.32)')x11
write(1,'(z32.32)')x12
write(1,'(z32.32)')x21
write(1,'(z32.32)')x22
write(1,'(z32.32)')x1
write(1,'(z32.32)')x2
!
!print *,1,x11
!print *,2,x12
!print *,3,x21
!print *,4,x22
!print *,5,x1
!print *,6,x2


  y11=yar*ybr
  y12=yai*ybi
  y1=y11-y12
  y21=yar*ybi
  y22=ybr*yai
  y2=y21+y22
write(2,'(z32.32)')y11
write(2,'(z32.32)')y12
write(2,'(z32.32)')y21
write(2,'(z32.32)')y22
write(2,'(z32.32)')y1
write(2,'(z32.32)')y2
call chk1
print *,'pass'
  end
subroutine chk1
character(32) c1(6)
character(32) c2(6)
character(*),parameter::m8='80000000000000000000000000000000'
character(*),parameter::m0='00000000000000000000000000000000'
integer::u=1
rewind u
read(u,'(a)') c1(1)
read(u,'(a)') c1(2)
read(u,'(a)') c1(3)
read(u,'(a)') c1(4)
read(u,'(a)') c1(5)
read(u,'(a)') c1(6)
u=2
rewind u
read(u,'(a)') c2(1)
read(u,'(a)') c2(2)
read(u,'(a)') c2(3)
read(u,'(a)') c2(4)
read(u,'(a)') c2(5)
read(u,'(a)') c2(6)
if (c1(1)/=m8)print *,101
if (c1(2)/=m8)print *,102
if (c1(3)/=m8)print *,103
if (c1(4)/=m8)print *,104
if (c1(5)/=m0)print *,105
if (c1(6)/=m8)print *,106
if (c2(1)/=m8)print *,201
if (c2(2)/=m8)print *,202
if (c2(3)/=m8)print *,203
if (c2(4)/=m8)print *,204
if (c2(5)/=m0)print *,205
if (c2(6)/=m8)print *,206
if (any(c1/=c2))print *,300
end

