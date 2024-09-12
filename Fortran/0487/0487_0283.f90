module m1
contains
   function log1(x) bind(c)
   logical(kind=1) :: log1,x
   log1=.true.
   if (.not.x) print *,801
   end
   function log2(x) bind(c)
   logical(kind=2) :: log2,x
   log2=.true.
   if (.not.x) print *,801
   end
   function log4(x) bind(c)
   logical(kind=4) :: log4,x
   log4=.true.
   if (.not.x) print *,801
   end
   function log8(x) bind(c)
   logical(kind=8) :: log8,x
   log8=.true.
   if (.not.x) print *,801
   end
   end
use m1
   if (.not.log1(.true._1)) print *,101
   if (.not.log2(.true._2)) print *,102
   if (.not.log4(.true._4)) print *,104
   if (.not.log8(.true._8)) print *,108
print *,'pass'
end
