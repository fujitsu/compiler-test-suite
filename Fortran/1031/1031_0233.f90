module m1
intrinsic SIN
end
module m2
use m1,COS=>SIN
end 
use m2
if (abs(COS(0.0))>0.00001)print *,'error'
print *,'pass'
end
