module m1
type x
  integer:: a
  integer,allocatable::z(:)
end type
integer(8)::ia
integer::k1=1,k2=2
contains
  ELEMENTAL FUNCTION f( d ) RESULT( r ) 
    TYPE(x), INTENT(IN) :: d
    TYPE(x) :: r
   r=d 
  END FUNCTION 
elemental function fz(d) result(r)
integer,intent(in)::d
integer::r
r=d
end function
function ff() result(r)
 type(x),allocatable::r
 allocate(r)
 r=x(2,[1,2])
end function
subroutine ss(y,n)
  TYPE(x) :: y
if (.not.allocated(y%z) ) print *,111
if (y%a   /=2 ) print *,412
if (y%z(1)/=n ) print *,112
if (ia==loc(y%z(1))) then
 write(1,'("01: ",z16.16)')ia
 write(1,'("02: ",z16.16)')loc(y%z(1))
endif
end subroutine
end
subroutine s1
use m1
  TYPE(x) :: v,w
allocate(w%z(2),source=[1,2])
ia=loc(w%z)
call ss(x(2,[1]),1)
call ss(x(2,w%z+1),2)
v=x(2,w%z)
if (v%a/=2) print *,1001
if (any(v%z/=[1,2])) print *,1002
if (size(v%z)/=2) print *,1003
w=x(2,[w%z])
if (w%a/=2) print *,1011
if (any(w%z/=[1,2])) print *,1012
if (size(w%z)/=2) print *,1013
w=x(0,[0,0])
w=x(2,[k1,k2])
if (w%a/=2) print *,1021
if (any(w%z/=[1,2])) print *,1022
if (size(w%z)/=2) print *,1023
w=x(0,[0,0])
w%z=[1,2]
w=x(2,w%z+1)
if (w%a/=2) print *,1041
if (any(w%z/=[1,2]+1)) print *,1042
if (size(w%z)/=2) print *,1043
w=x(0,[0,0])
w%z=[1,2]
w=x(2,[w%z+1])
if (w%a/=2) print *,1031
if (any(w%z/=[1,2]+1)) print *,1042
if (size(w%z)/=2) print *,1053
w=x(0,[0,0])
w%z=[1,2]
w=f(x(2,w%z))
if (w%a/=2) print *,1051
if (any(w%z/=[1,2])) print *,1052
if (size(w%z)/=2) print *,1053
w=x(0,[0,0])
w%z=[1,2]
w=x(2,fz(w%z))
if (w%a/=2) print *,1061
if (any(w%z/=[1,2])) print *,1062
if (size(w%z)/=2) print *,1063
w=x(0,[0,0])
w=ff()
if (w%a/=2) print *,1061
if (any(w%z/=[1,2])) print *,10621
if (size(w%z)/=2) print *,10631
end
do k=1,100
call s1
end do
print *,'pass'
end
