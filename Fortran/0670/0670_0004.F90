#define e 9
#define d 9
#define q 9
#define x 9
#define e1 7
#define d1 7
#define q1 7
#define x1 7
aa=1e1
ba=1d1
ca=1q1
da=1x1
ab=1.e1
bb=1.d1
cb=1.q1
db=1.x1
if (abs(aa-10)>0.0001)print *,'error-01'
if (abs(ba-10)>0.0001)print *,'error-02'
if (abs(ca-10)>0.0001)print *,'error-03'
if (abs(da-17)>0.0001)print *,'error-04'
if (abs(ab-10)>0.0001)print *,'error-05'
if (abs(bb-10)>0.0001)print *,'error-06'
if (abs(cb-10)>0.0001)print *,'error-07'
if (abs(db-1.7)>0.0001)print *,'error-08'
print *,'pass'
end
