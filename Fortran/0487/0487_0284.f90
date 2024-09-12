module m1
contains
   function log1(x) bind(c)
   entry log11(x) bind(c)
   logical(kind=1) :: log11,x
   logical(kind=1) :: log1
   log1=.true.
   if (.not.x) print *,801
   end
   function log2(x) bind(c)
   entry log21(x) bind(c)
   logical(kind=2) :: log21,x
   logical(kind=2) :: log2
   log2=.true.
   if (.not.x) print *,801
   end
   function log4(x) bind(c)
   entry log41(x) bind(c)
   logical(kind=4) :: log41,x
   logical(kind=4) :: log4
   log4=.true.
   if (.not.x) print *,801
   end
   function log8(x) bind(c)
   entry log81(x) bind(c)
   logical(kind=8) :: log81,x
   logical(kind=8) :: log8
   log8=.true.
   if (.not.x) print *,801
   end
   end
use m1
logical(1)::x1=.true.
logical(2)::x2=.true.
logical(4)::x4=.true.
logical(8)::x8=.true.
   if (.not.log1(x1)) print *,101
   if (.not.log2(x2)) print *,102
   if (.not.log4(x4)) print *,104
   if (.not.log8(x8)) print *,108
   if (.not.log11(x1)) print *,111
   if (.not.log21(x2)) print *,121
   if (.not.log41(x4)) print *,141
   if (.not.log81(x8)) print *,181
print *,'pass'
end
