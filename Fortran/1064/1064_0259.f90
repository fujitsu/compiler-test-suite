subroutine s1(c11,i,c99)
implicit complex(c)
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
if (abs(r01-121)>0.00001) print *,101
if (abs(r02-121)>0.00001) print *,102
if (abs(r03-121)>0.00001) print *,103
if (abs(r04-121)>0.00001) print *,104
if (abs(r21-144)>0.00001) print *,111,r21
if (abs(r22-144)>0.00001) print *,112
if (abs(r23-144)>0.00001) print *,113
if (abs(r24-144)>0.00001) print *,114
if (abs(c31%im-121)>0.00001) print *,131
if (abs(c32%im-121)>0.00001) print *,132
if (abs(c33%im-121)>0.00001) print *,133
if (abs(c34%im-121)>0.00001) print *,134
if (abs(c41%im-144)>0.00001) print *,141
if (abs(c42%im-144)>0.00001) print *,142
if (abs(c43%im-144)>0.00001) print *,143
if (abs(c44%im-144)>0.00001) print *,144

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
if (abs(r01-121)>0.00001) print *,201
if (abs(r02-121)>0.00001) print *,202
if (abs(r03-121)>0.00001) print *,203
if (abs(r04-121)>0.00001) print *,204
if (abs(r21-144)>0.00001) print *,211,r21
if (abs(r22-144)>0.00001) print *,212
if (abs(r23-144)>0.00001) print *,213
if (abs(r24-144)>0.00001) print *,214
if (abs(c31%im-121)>0.00001) print *,231
if (abs(c32%im-121)>0.00001) print *,232
if (abs(c33%im-121)>0.00001) print *,233
if (abs(c34%im-121)>0.00001) print *,234
if (abs(c41%im-144)>0.00001) print *,241
if (abs(c42%im-144)>0.00001) print *,242
if (abs(c43%im-144)>0.00001) print *,243
if (abs(c44%im-144)>0.00001) print *,244
end
implicit complex(c)
c11=(11,12)
c99%im=2
call s1(c11,2,c99)
print *,'pass'
end
