module m1
contains
   function log1() bind(c)
   entry log11() bind(c)
   logical(kind=1) :: log11
   logical(kind=1) :: log1
   log1=.true.
   end
   function log2() bind(c)
   entry log21() bind(c)
   logical(kind=2) :: log21
   logical(kind=2) :: log2
   log2=.true.
   end
   function log4() bind(c)
   entry log41() bind(c)
   logical(kind=4) :: log41
   logical(kind=4) :: log4
   log4=.true.
   end
   function log8() bind(c)
   entry log81() bind(c)
   logical(kind=8) :: log81
   logical(kind=8) :: log8
   log8=.true.
   end
   end
use m1
   if (.not.log1()) print *,101
   if (.not.log2()) print *,102
   if (.not.log4()) print *,104
   if (.not.log8()) print *,108
   if (.not.log11()) print *,111
   if (.not.log21()) print *,121
   if (.not.log41()) print *,141
   if (.not.log81()) print *,181
print *,'pass'
end
