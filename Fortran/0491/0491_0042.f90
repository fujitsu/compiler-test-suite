module m1
  integer:: x1,x2
!$omp threadprivate (x1,x2)
end
module m11
use m1,only:y1=>x1,x2
integer,private:: x1
!$omp threadprivate (x1)
end
module m12
use m1,y2=>x2
integer,private:: x2
!$omp threadprivate (x2)
end
module m13
use m1,only:y2=>x2,y1=>x1
integer,private:: x2,x1
!$omp threadprivate (x1,x2)
end
use m1
use m12
use m13
x1=1
x2=1
if (x1/=1) print *,101
if (x2/=1) print *,102
print *,'pass'
end
