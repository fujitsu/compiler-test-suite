module m0
contains
subroutine sx02(w)
integer:: w
if (w/=3 ) print *,1002,w
end subroutine
subroutine sx01(w)
logical:: w
if (.not.w) print *,1001,w
end subroutine
end
module m1
use m0
 private
public:: iall,all
  intrinsic all
public:: sx01,sx02
integer,parameter:: k5= iall( [3,7] ) 
logical,parameter:: k6= all( [.true.,.true.] ) 
public :: k5,k6
end
subroutine s1
use m1,only:x=>iall,y=>all,sx01,sx02
logical,parameter:: k1= all( [.true.,.true.] ) 
logical,parameter:: k2= y  ( [.true.,.true.] ) 
integer,parameter:: k3= iall( [3,7] ) 
integer,parameter:: k4= x   ( [3,7] ) 

call sx01( k1 )
call sx01( k2 )
call sx02( k3 )
call sx02( k4 )

end
subroutine s2
use m0
use m1,only:k5,k6
call sx01( k6 )
call sx02( k5 )
end
call s1
call s2
print *,'pass'
end
