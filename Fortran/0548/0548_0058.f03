call s1
call s2
call s3
print *,'pass'
end
subroutine s1
real(4)::r1,r2
real(8)::d1,d2
real(16)::q1,q2
r1=333;d1=333;q1=333
r2=0;d2=0;q2=0

if(hypot(x=r1,y=r2)/=333.0_4) print *,'err'
if(hypot(y=r2,x=r1)/=333.0_4) print *,'err'
if(hypot(x=r1,y=d2)/=333.0_8) print *,'err'
if(hypot(y=d2,x=r1)/=333.0_8) print *,'err'
if(hypot(x=r1,y=q2)/=333.0_16) print *,'err'
if(hypot(y=q2,x=r1)/=333.0_16) print *,'err'

if(hypot(x=d1,y=r2)/=333.0_8) print *,'err'
if(hypot(y=r2,x=d1)/=333.0_8) print *,'err'
if(hypot(x=d1,y=d2)/=333.0_8) print *,'err'
if(hypot(y=d2,x=d1)/=333.0_8) print *,'err'
if(hypot(x=d1,y=q2)/=333.0_16) print *,'err'
if(hypot(y=q2,x=d1)/=333.0_16) print *,'err'

if(hypot(x=q1,y=r2)/=333.0_16) print *,'err'
if(hypot(y=r2,x=q1)/=333.0_16) print *,'err'
if(hypot(x=q1,y=d2)/=333.0_16) print *,'err'
if(hypot(y=d2,x=q1)/=333.0_16) print *,'err'
if(hypot(x=q1,y=q2)/=333.0_16) print *,'err'
if(hypot(y=q2,x=q1)/=333.0_16) print *,'err'

if(kind(hypot(r1,r2))/=4) print *,'err'
if(kind(hypot(r1,d2))/=8) print *,'err'
if(kind(hypot(r1,q2))/=16) print *,'err'
if(kind(hypot(d1,r2))/=8) print *,'err'
if(kind(hypot(q1,r2))/=16) print *,'err'
end

subroutine s2
real(4)::r1,r2(2)
real(8)::d1,d2(2)
real(16)::q1,q2(2)
r1=333;d1=333;q1=333
r2=0;d2=0;q2=0

if(any(hypot(x=r1,y=r2)/=[333.0_4,333.0_4])) print *,'err'
if(any(hypot(y=r2,x=r1)/=[333.0_4,333.0_4])) print *,'err'
if(any(hypot(x=r1,y=d2)/=[333.0_8,333.0_8])) print *,'err'
if(any(hypot(y=d2,x=r1)/=[333.0_8,333.0_8])) print *,'err'
if(any(hypot(x=r1,y=q2)/=[333.0_16,333.0_16])) print *,'err'
if(any(hypot(y=q2,x=r1)/=[333.0_16,333.0_16])) print *,'err'

if(any(hypot(x=d1,y=r2)/=[333.0_8,333.0_8])) print *,'err'
if(any(hypot(y=r2,x=d1)/=[333.0_8,333.0_8])) print *,'err'
if(any(hypot(x=d1,y=d2)/=[333.0_8,333.0_8])) print *,'err'
if(any(hypot(y=d2,x=d1)/=[333.0_8,333.0_8])) print *,'err'
if(any(hypot(x=d1,y=q2)/=[333.0_16,333.0_16])) print *,'err'
if(any(hypot(y=q2,x=d1)/=[333.0_16,333.0_16])) print *,'err'

if(any(hypot(x=q1,y=r2)/=[333.0_16,333.0_16])) print *,'err'
if(any(hypot(y=r2,x=q1)/=[333.0_16,333.0_16])) print *,'err'
if(any(hypot(x=q1,y=d2)/=[333.0_16,333.0_16])) print *,'err'
if(any(hypot(y=d2,x=q1)/=[333.0_16,333.0_16])) print *,'err'
if(any(hypot(x=q1,y=q2)/=[333.0_16,333.0_16])) print *,'err'
if(any(hypot(y=q2,x=q1)/=[333.0_16,333.0_16])) print *,'err'

if(kind(hypot(r1,r2))/=4) print *,'err'
if(kind(hypot(r1,d2))/=8) print *,'err'
if(kind(hypot(r1,q2))/=16) print *,'err'
if(kind(hypot(d1,r2))/=8) print *,'err'
if(kind(hypot(q1,r2))/=16) print *,'err'
end

subroutine s3
real(4)::r1,r2(0)
real(8)::d1,d2(0)
real(16)::q1,q2(0)
r1=333;d1=333;q1=333
r2=0;d2=0;q2=0

if(any(hypot(x=r1,y=r2)/=[real(4)::])) print *,'err'
if(any(hypot(y=r2,x=r1)/=[real(4)::])) print *,'err'
if(any(hypot(x=r1,y=d2)/=[real(8)::])) print *,'err'
if(any(hypot(y=d2,x=r1)/=[real(8)::])) print *,'err'
if(any(hypot(x=r1,y=q2)/=[real(16)::])) print *,'err'
if(any(hypot(y=q2,x=r1)/=[real(16)::])) print *,'err'

if(any(hypot(x=d1,y=r2)/=[real(8)::])) print *,'err'
if(any(hypot(y=r2,x=d1)/=[real(8)::])) print *,'err'
if(any(hypot(x=d1,y=d2)/=[real(8)::])) print *,'err'
if(any(hypot(y=d2,x=d1)/=[real(8)::])) print *,'err'
if(any(hypot(x=d1,y=q2)/=[real(16)::])) print *,'err'
if(any(hypot(y=q2,x=d1)/=[real(16)::])) print *,'err'

if(any(hypot(x=q1,y=r2)/=[real(16)::])) print *,'err'
if(any(hypot(y=r2,x=q1)/=[real(16)::])) print *,'err'
if(any(hypot(x=q1,y=d2)/=[real(16)::])) print *,'err'
if(any(hypot(y=d2,x=q1)/=[real(16)::])) print *,'err'
if(any(hypot(x=q1,y=q2)/=[real(16)::])) print *,'err'
if(any(hypot(y=q2,x=q1)/=[real(16)::])) print *,'err'

if(kind(hypot(r1,r2))/=4) print *,'err'
if(kind(hypot(r1,d2))/=8) print *,'err'
if(kind(hypot(r1,q2))/=16) print *,'err'
if(kind(hypot(d1,r2))/=8) print *,'err'
if(kind(hypot(q1,r2))/=16) print *,'err'
end
