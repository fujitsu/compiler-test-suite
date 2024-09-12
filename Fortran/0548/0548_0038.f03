#define EQUAL_CHECK_WITH_MARGIN_REAL(a, b) ((abs(a - b)/abs(a)) .gt. 1.0D-5)
call s1
call s2
call s3
print *,'pass'
end
subroutine s1
real(4)::r1(10),r2
real(8)::d1,d2(10)
real(16)::q1(10),q2
r1=3.0_4
d1=3.0_8
q1=3.0_16
r2=4.0_4
d2=4.0_8
q2=4.0_16
if(any(hypot(r1,r2)/=sqrt(r1**2+r2**2))) print *,'err1'
if(any(hypot(d1,d2)/=sqrt(d1**2+d2**2))) print *,'err2'
if(any(hypot(q1,q2)/=sqrt(q1**2+q2**2))) print *,'err3'
if(any(hypot(y=r2,x=r1)/=sqrt(r1**2+r2**2))) print *,'err4'
if(any(hypot(y=d2,x=d1)/=sqrt(d1**2+d2**2))) print *,'err5'
if(any(hypot(y=q2,x=q1)/=sqrt(q1**2+q2**2))) print *,'err6'
end
subroutine s2
real(4)::r1(10),r2
real(8)::d1,d2(10)
real(16)::q1(10),q2
r1=-3.0_4
d1=-3.0_8
q1=-3.0_16
r2=-4.0_4
d2=-4.0_8
q2=-4.0_16
if(any(hypot(r1,r2)/=sqrt(r1**2+r2**2))) print *,'err1'
if(any(hypot(d1,d2)/=sqrt(d1**2+d2**2))) print *,'err2'
if(any(hypot(q1,q2)/=sqrt(q1**2+q2**2))) print *,'err3'
if(any(hypot(y=r2,x=r1)/=sqrt(r1**2+r2**2))) print *,'err4'
if(any(hypot(y=d2,x=d1)/=sqrt(d1**2+d2**2))) print *,'err5'
if(any(hypot(y=q2,x=q1)/=sqrt(q1**2+q2**2))) print *,'err6'
end
subroutine s3
real(4)::r1(10),r2(10)
call random_number(r1)
call random_number(r2)
do i=1,10
if(EQUAL_CHECK_WITH_MARGIN_REAL(sqrt(r1(i)**2+r2(i)**2),hypot(r1(i),r2(i)))) print *,'err00'
enddo
end
