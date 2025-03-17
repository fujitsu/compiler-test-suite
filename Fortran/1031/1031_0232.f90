module m1
intrinsic SIN
end
use m1,COS=>SIN
if (abs(COS(0.0))>0.00001)print *,'error'
print *,'pass'
end
