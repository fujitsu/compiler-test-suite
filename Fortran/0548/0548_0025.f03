call s0
call s1
call s2
print *,'pass'
contains
subroutine s0
if(atan2(-0.,-1.)/=atan(-0.,-1.)) print *,'err1'
if(atan(y=-0.,x=-1.)/=atan2(y=-0.,x=-1.)) print *,'err2'
if(atan2(0.,1.)/=atan(0.,1.)) print *,'err3'
if(atan(y=0.,x=1.)/=atan(0./1.)) print *,'err4'
if(atan2(-0._8,-1._8)/=atan(-0._8,-1._8)) print *,'err5'
if(atan(y=-0._8,x=-1._8)/=atan2(y=-0._8,x=-1._8)) print *,'err6'
if(atan2(0._8,1._8)/=atan(0._8,1._8)) print *,'err7'
if(atan(y=0._8,x=1._8)/=atan(0._8/1._8)) print *,'err8'
if(atan2(-0._16,-1._16)/=atan(-0._16,-1._16)) print *,'err9'
if(atan(y=-0._16,x=-1._16)/=atan2(y=-0._16,x=-1._16)) print *,'err10'
if(atan2(0._16,1._16)/=atan(0._16,1._16)) print *,'err11'
if(atan(y=0._16,x=1._16)/=atan(0._16/1._16)) print *,'err12'
end subroutine
subroutine s1
real(4)::r1,r2
real(8)::d1,d2
real(16)::q1,q2
r1=0._4
r2=1._4
d1=0._8
d2=1._8
q1=0._16
q2=1._16
if(atan2(-r1,-r2)/=atan(-r1,-r2)) print *,'err11'
if(atan(y=-r1,x=-r2)/=atan2(y=-r1,x=-r2)) print *,'err12'
if(atan2(r1,r2)/=atan(r1,r2)) print *,'err13'
if(atan(y=r1,x=r2)/=atan(r1/r2)) print *,'err14'
if(atan2(-d1,-d2)/=atan(-d1,-d2)) print *,'err15'
if(atan(y=-d1,x=-d2)/=atan2(y=-d1,x=-d2)) print *,'err16'
if(atan2(d1,d2)/=atan(d1,d2)) print *,'err17'
if(atan(y=d1,x=d2)/=atan(d1/d2)) print *,'err18'
if(atan2(-q1,-q2)/=atan(-q1,-q2)) print *,'err19'
if(atan(y=-q1,x=-q2)/=atan2(y=-q1,x=-q2)) print *,'err20'
if(atan2(q1,q2)/=atan(q1,q2)) print *,'err21'
if(atan(y=q1,x=q2)/=atan(q1/q2)) print *,'err22'
end subroutine
subroutine s2
real(4)::r1,r2(1)
real(8)::d1,d2(1)
real(16)::q1,q2(1)
r1=0._4
r2=1._4
d1=0._8
d2=1._8
q1=0._16
q2=1._16
if(any(atan2(-r1,-r2)/=atan(-r1,-r2))) print *,'err23'
if(any(atan(y=-r1,x=-r2)/=atan2(y=-r1,x=-r2))) print *,'err24'
if(any(atan2(r1,r2)/=atan(r1,r2))) print *,'err25'
if(any(atan(y=r1,x=r2)/=atan(r1/r2))) print *,'err26'
if(any(atan2(-d1,-d2)/=atan(-d1,-d2))) print *,'err27'
if(any(atan(y=-d1,x=-d2)/=atan2(y=-d1,x=-d2))) print *,'err28'
if(any(atan2(d1,d2)/=atan(d1,d2))) print *,'err29'
if(any(atan(y=d1,x=d2)/=atan(d1/d2))) print *,'err30'
if(any(atan2(-q1,-q2)/=atan(-q1,-q2))) print *,'err31'
if(any(atan(y=-q1,x=-q2)/=atan2(y=-q1,x=-q2))) print *,'err32'
if(any(atan2(q1,q2)/=atan(q1,q2))) print *,'err33'
if(any(atan(y=q1,x=q2)/=atan(q1/q2))) print *,'err34'
end subroutine
end
