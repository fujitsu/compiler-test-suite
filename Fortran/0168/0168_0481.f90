module m0
contains
subroutine sx02(w)
integer:: w
if (w/=7 ) print *,1002,w
end subroutine
subroutine sx01(w)
logical:: w
if (.not.w) print *,1001,w
end subroutine
end
module m1
use m0
 private
public:: iany,all
  intrinsic iany
  intrinsic all
public:: sx01,sx02
end
subroutine s1
use m1,only:x=>iany,y=>all,sx01,sx02

call sx01( all( [.true.,.true.] ) )
call sx01( y  ( [.true.,.true.] ) )
call sx02( x   ( [3 , 7] ) )
call sx02( iany( [3 , 7] ) )
end
subroutine s2
use m0
call sx01( all( [.true.,.true.] ) )
call sx02( iany( [3 , 7] ) )
end
call s1
call s2
print *,'pass'
end
