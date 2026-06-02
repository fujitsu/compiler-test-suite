subroutine s1(c11,i,c99)
implicit complex(c)
dimension c11(2),c99(2),c31(2),c32(2),c33(2),c34(2),c41(2),c42(2),c43(2),c44(2),c21(2)
dimension r01(2),r02(2),r03(2),r04(2),r21(2),r22(2),r23(2),r24(2)
c21=(11,12)
do k=1,2
r01(k)=c11(k)%re**i
r02(k)=c11(k)%re**2
r03(k)=c11(k)%re**2.0
r04(k)=c11(k)%re**c99(k)%im
c31(k)%im=c11(k)%re**i
c32(k)%im=c11(k)%re**2
c33(k)%im=c11(k)%re**2.0
c34(k)%im=c11(k)%re**c99(k)%im
r21(k)=c11(k)%im**i
r22(k)=c11(k)%im**2
r23(k)=c11(k)%im**2.0
r24(k)=c11(k)%im**c99(k)%im
c41(k)%im=c11(k)%im**i
c42(k)%im=c11(k)%im**2
c43(k)%im=c11(k)%im**2.0
c44(k)%im=c11(k)%im**c99(k)%im
if (   (abs(r01(k)-121)>0.00001)) print *,101
if (   (abs(r02(k)-121)>0.00001)) print *,102
if (   (abs(r03(k)-121)>0.00001)) print *,103
if (   (abs(r04(k)-121)>0.00001)) print *,104
if (   (abs(r21(k)-144)>0.00001)) print *,111,r21
if (   (abs(r22(k)-144)>0.00001)) print *,112
if (   (abs(r23(k)-144)>0.00001)) print *,113
if (   (abs(r24(k)-144)>0.00001)) print *,114
if (   (abs(c31(k)%im-121)>0.00001)) print *,131
if (   (abs(c32(k)%im-121)>0.00001)) print *,132
if (   (abs(c33(k)%im-121)>0.00001)) print *,133
if (   (abs(c34(k)%im-121)>0.00001)) print *,134
if (   (abs(c41(k)%im-144)>0.00001)) print *,141
if (   (abs(c42(k)%im-144)>0.00001)) print *,142
if (   (abs(c43(k)%im-144)>0.00001)) print *,143
if (   (abs(c44(k)%im-144)>0.00001)) print *,144
end do

do k=1,2
r01(k)=c21(k)%re**i
r02(k)=c21(k)%re**2
r03(k)=c21(k)%re**2.0
r04(k)=c21(k)%re**c99(k)%im
r21(k)=c21(k)%im**i
r22(k)=c21(k)%im**2
r23(k)=c21(k)%im**2.0
r24(k)=c21(k)%im**c99(k)%im
c31%im=c21(k)%re**i
c32%im=c21(k)%re**2
c33%im=c21(k)%re**2.0
c34%im=c21(k)%re**c99(k)%im
c41%im=c21(k)%im**i
c42%im=c21(k)%im**2
c43%im=c21(k)%im**2.0
c44%im=c21(k)%im**c99(k)%im
if (   (abs(r01(k)-121)>0.00001)) print *,201
if (   (abs(r02(k)-121)>0.00001)) print *,202
if (   (abs(r03(k)-121)>0.00001)) print *,203
if (   (abs(r04(k)-121)>0.00001)) print *,204
if (   (abs(r21(k)-144)>0.00001)) print *,211,r21
if (   (abs(r22(k)-144)>0.00001)) print *,212
if (   (abs(r23(k)-144)>0.00001)) print *,213
if (   (abs(r24(k)-144)>0.00001)) print *,214
if (   (abs(c31(k)%im-121)>0.00001)) print *,231
if (   (abs(c32(k)%im-121)>0.00001)) print *,232
if (   (abs(c33(k)%im-121)>0.00001)) print *,233
if (   (abs(c34(k)%im-121)>0.00001)) print *,234
if (   (abs(c41(k)%im-144)>0.00001)) print *,241
if (   (abs(c42(k)%im-144)>0.00001)) print *,242
if (   (abs(c43(k)%im-144)>0.00001)) print *,243
if (   (abs(c44(k)%im-144)>0.00001)) print *,244
end do
end
implicit complex(c)
dimension c11(2),c99(2)
c11=(11,12)
c99%im=2
call s1(c11,2,c99)
print *,'pass'
end
