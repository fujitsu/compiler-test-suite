module m1
contains
subroutine sub04(k1)
 integer(4):: k1(:)
if (any(k1/=2)) print *,1021,k1
 if (size(k1)/=2) print *,1003
 end subroutine
 end


subroutine s1
use m1
 integer,parameter:: a(4,2)=reshape([1,2,3,4,5,6,6,5],[4,2])
 logical,parameter:: m(4,2)=.true.
 logical,parameter::t=.true.,f=.false.
intrinsic findloc
integer :: r1(2)  = findloc( a , 6 , m , 4, .not.t)
integer :: r2(2)  = findloc( a , 6 , m , 4, f)
integer :: r3(2)  = findloc( a , 6 , m , 4,t)
integer :: a1(2),a2(2),a3(2)
a1= findloc( a , 6 , m , 4, .not.t)
a2=findloc( a , 6 , m , 4, f)
a3=findloc( a , 6 , m , 4,t)
if(ANY(a1/=r1)) print *,101
if(ANY(a2/=r2)) print *,102
if(ANY(a3/=r3)) print *,103
end
 call s1
print *,'pass'
end

