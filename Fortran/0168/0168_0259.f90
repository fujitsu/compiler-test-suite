subroutine s1(c11,i,c99)
implicit complex(c)
dimension c11(2),c99(2),c31(2),c32(2),c33(2),c34(2),c41(2),c42(2),c43(2),c44(2),c21(2)
dimension r01(2),r02(2),r03(2),r04(2),r21(2),r22(2),r23(2),r24(2)
c21=(11,12)
r01=c11%re**i
r02=c11%re**2
r03=c11%re**2.0
r04=c11%re**c99%im
c31%im=c11%re**i
c32%im=c11%re**2
c33%im=c11%re**2.0
c34%im=c11%re**c99%im
r21=c11%im**i
r22=c11%im**2
r23=c11%im**2.0
r24=c11%im**c99%im
c41%im=c11%im**i
c42%im=c11%im**2
c43%im=c11%im**2.0
c44%im=c11%im**c99%im
if (any(abs(r01-121)>0.00001)) print *,101
if (any(abs(r02-121)>0.00001)) print *,102
if (any(abs(r03-121)>0.00001)) print *,103
if (any(abs(r04-121)>0.00001)) print *,104
if (any(abs(r21-144)>0.00001)) print *,111,r21
if (any(abs(r22-144)>0.00001)) print *,112
if (any(abs(r23-144)>0.00001)) print *,113
if (any(abs(r24-144)>0.00001)) print *,114
if (any(abs(c31%im-121)>0.00001)) print *,131
if (any(abs(c32%im-121)>0.00001)) print *,132
if (any(abs(c33%im-121)>0.00001)) print *,133
if (any(abs(c34%im-121)>0.00001)) print *,134
if (any(abs(c41%im-144)>0.00001)) print *,141
if (any(abs(c42%im-144)>0.00001)) print *,142
if (any(abs(c43%im-144)>0.00001)) print *,143
if (any(abs(c44%im-144)>0.00001)) print *,144

r01=c21%re**i
r02=c21%re**2
r03=c21%re**2.0
r04=c21%re**c99%im
c31%im=c21%re**i
c32%im=c21%re**2
c33%im=c21%re**2.0
c34%im=c21%re**c99%im
r21=c21%im**i
r22=c21%im**2
r23=c21%im**2.0
r24=c21%im**c99%im
c41%im=c21%im**i
c42%im=c21%im**2
c43%im=c21%im**2.0
c44%im=c21%im**c99%im
if (any(abs(r01-121)>0.00001)) print *,201
if (any(abs(r02-121)>0.00001)) print *,202
if (any(abs(r03-121)>0.00001)) print *,203
if (any(abs(r04-121)>0.00001)) print *,204
if (any(abs(r21-144)>0.00001)) print *,211,r21
if (any(abs(r22-144)>0.00001)) print *,212
if (any(abs(r23-144)>0.00001)) print *,213
if (any(abs(r24-144)>0.00001)) print *,214
if (any(abs(c31%im-121)>0.00001)) print *,231
if (any(abs(c32%im-121)>0.00001)) print *,232
if (any(abs(c33%im-121)>0.00001)) print *,233
if (any(abs(c34%im-121)>0.00001)) print *,234
if (any(abs(c41%im-144)>0.00001)) print *,241
if (any(abs(c42%im-144)>0.00001)) print *,242
if (any(abs(c43%im-144)>0.00001)) print *,243
if (any(abs(c44%im-144)>0.00001)) print *,244
end
implicit complex(c)
dimension c11(2),c99(2)
c11=(11,12)
c99%im=2
call s1(c11,2,c99)
print *,'pass'
end
