module m1
   logical(kind=1) :: log1
   logical(kind=2) :: log2
   logical(kind=4) :: log4
   logical(kind=8) :: log8
   bind(c) :: log1
   bind(c) :: log2
   bind(c) :: log4
   bind(c) :: log8
contains
subroutine s
   log1=.true.
   log2=.true.
   log4=.true.
   log8=.true.
   if (.not.log1) print *,101
   if (.not.log2) print *,102
   if (.not.log4) print *,104
   if (.not.log8) print *,108
end
end
use m1
call s
print *,'pass'
end
