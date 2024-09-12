module m1
contains
   function log1() bind(c)
   logical(kind=1) :: log1
   log1=.true.
   end
   function log2() bind(c)
   logical(kind=2) :: log2
   log2=.true.
   end
   function log4() bind(c)
   logical(kind=4) :: log4
   log4=.true.
   end
   function log8() bind(c)
   logical(kind=8) :: log8
   log8=.true.
   end
   end
use m1
   if (.not.log1()) print *,101
   if (.not.log2()) print *,102
   if (.not.log4()) print *,104
   if (.not.log8()) print *,108
print *,'pass'
end
