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
  TYPE(x) :: v(2),w(2)
allocate(w(1)%z(2),source=[1,2])
allocate(w(2)%z(2),source=[1,2])
ia=loc(w(1)%z)
call ss(x(2,[1]),1)
call ss(x(2,w(2)%z+1),2)
v=x(2,w(2)%z)
if (v(1)%a/=2) print *,1061
if (v(2)%a/=2) print *,1001
if (any(v(2)%z/=[1,2])) print *,1002
if (size(v(2)%z)/=2) print *,1003
v=x(2,[w(2)%z])
if (v(1)%a/=2) print *,1061
if (v(2)%a/=2) print *,1011
if (any(v(1)%z/=[1,2])) print *,10128
if (any(v(2)%z/=[1,2])) print *,10127
if (size(v(2)%z)/=2) print *,1013
v=x(0,[0,0])
v=x(2,[k1,k2])
if (v(1)%a/=2) print *,1061
if (v(2)%a/=2) print *,1021
if (any(v(1)%z/=[1,2])) print *,10126
if (any(v(2)%z/=[1,2])) print *,1022
if (size(v(2)%z)/=2) print *,1023
v=x(0,[0,0])
v=x(2,w(2)%z+1)
if (v(1)%a/=2) print *,1061
if (v(2)%a/=2) print *,1041
if (any(v(1)%z/=[1,2]+1)) print *,10125
if (any(v(2)%z/=[1,2]+1)) print *,1042
if (size(v(2)%z)/=2) print *,1043
v=x(0,[0,0])
v=x(2,[w(2)%z+1])
if (v(1)%a/=2) print *,1061
if (v(2)%a/=2) print *,1031
if (any(v(1)%z/=[1,2]+1)) print *,10124
if (any(v(2)%z/=[1,2]+1)) print *,1042
if (size(v(2)%z)/=2) print *,1053
v=x(0,[0,0])
v=f(x(2,w(2)%z))
if (v(1)%a/=2) print *,1061
if (v(2)%a/=2) print *,1051
if (any(v(1)%z/=[1,2])) print *,10123
if (any(v(2)%z/=[1,2])) print *,1052
if (size(v(2)%z)/=2) print *,1053
v=x(0,[0,0])
v=x(2,fz(w(2)%z))
if (v(1)%a/=2) print *,1061
if (v(2)%a/=2) print *,1061
if (any(v(1)%z/=[1,2])) print *,10122
if (any(v(2)%z/=[1,2])) print *,1062
if (size(v(2)%z)/=2) print *,1063
v=x(0,[0,0])
v=ff()
if (v(2)%a/=2) print *,1061
if (any(v(1)%z/=[1,2])) print *,10121
if (any(v(2)%z/=[1,2])) print *,10621
if (size(v(2)%z)/=2) print *,10631
end
do k=1,100
call s1
end do
print *,'pass'
end