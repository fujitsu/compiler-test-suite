module mod1
intrinsic max 
logical::v
end
subroutine s1
use mod1,only:v
external max
k=1
k=max(k,0)
end
print *,'pass'
end
function max(k,n)
max=1
end
