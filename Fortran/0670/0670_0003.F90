#define e 9
#define d 9
#define q 9
#define x 9
#define e0_8 8
#define d0_8 8
#define q0_8 8
#define x0_8 8
#define e0 7
#define d0 7
#define q0 7
#define x0 7
#define _8 3
aa=1e0_8
ba=1d0_8
ca=1q0_8
da=1x0_8
ab=1.e0_8
bb=1.d0_8
cb=1.q0_8
db=1.x0_8
if (abs(aa-1)>0.0001)print *,'error-01' 
if (abs(ba-1000)>0.0001)print *,'error-02' 
if (abs(ca-1000)>0.0001)print *,'error-03' 
if (abs(da-18)>0.0001)print *,'error-04' 
if (abs(ab-1)>0.0001)print *,'error-05' 
if (abs(bb-1000)>0.0001)print *,'error-06' 
if (abs(cb-1000)>0.0001)print *,'error-07' 
if (abs(db-1.8)>0.0001)print *,'error-08' 
print *,'pass'
end
