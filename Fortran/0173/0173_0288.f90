MODULE m1
  TYPE :: x
    integer, ALLOCATABLE :: z(:)
  END TYPE
integer::k1(1)=1,k2(1)=2
CONTAINS
  ELEMENTAL FUNCTION f( d ) RESULT( r )
    TYPE(x), INTENT(IN) :: d
    TYPE(x) :: r
   r=d
  END FUNCTION 
END MODULE 
subroutine s1
use  m1
  TYPE(x) :: v(1,4),w(1,2),g
allocate(v(1,1)% z(1),source=1)
allocate(v(1,2)% z(1),source=2)
w(1,:)= [ v(1,1),v(1,2)]
if (w(1,1)%z(1)/=1 ) print *,101
if (w(1,2)%z(1)/=2 ) print *,101
v(1,3:)= [ v(1,1),v(1,2)]
if (v(1,3)%z(1)/=1 ) print *,111
if (v(1,4)%z(1)/=2 ) print *,121
w=g
v(1,3:)=g
w(1,:)= f([ v(1,1),v(1,2)])
if (w(1,1)%z(1)/=1 ) print *,101
if (w(1,2)%z(1)/=2 ) print *,101
v(1,3:)= f([ v(1,1),v(1,2)])
if (v(1,3)%z(1)/=1 ) print *,111
if (v(1,4)%z(1)/=2 ) print *,121
w=g
v(1,3:)=g
w(1,:)= merge([ v(1,1),v(1,2)],g,.true.)
if (w(1,1)%z(1)/=1 ) print *,201
if (w(1,2)%z(1)/=2 ) print *,301
v(1,3:)= merge([ v(1,1),v(1,2)],g,.true.)
if (v(1,3)%z(1)/=1 ) print *,411
if (v(1,4)%z(1)/=2 ) print *,521
w=g
v(1,3:)=g
w(1,:)= [ x(v(1,1)%z), x(v(1,2)%z)]
if (w(1,1)%z(1)/=1 ) print *,101
if (w(1,2)%z(1)/=2 ) print *,101
v(1,3:)= [ x(v(1,1)%z), x(v(1,2)%z)]
if (v(1,3)%z(1)/=1 ) print *,111
if (v(1,4)%z(1)/=2 ) print *,121
w=g
v(1,3:)=g
w(1,:)= [ x( [1]    ), x( [2])]
if (w(1,1)%z(1)/=1 ) print *,101
if (w(1,2)%z(1)/=2 ) print *,101
v(1,3:)= [ x( [1]    ), x( [2])]
if (v(1,3)%z(1)/=1 ) print *,111
if (v(1,4)%z(1)/=2 ) print *,121
w=g
v(1,3:)=g
w(1,:)= [ x( k2-k1   ), x( k1+k1)]
if (w(1,1)%z(1)/=1 ) print *,101
if (w(1,2)%z(1)/=2 ) print *,101
v(1,3:)= [ x( k2-k1    ), x( k1+k1)]
if (v(1,3)%z(1)/=1 ) print *,111
if (v(1,4)%z(1)/=2 ) print *,121
w=g
v(1,3:)=g
w(1,:)= f(merge([ v(1,1),v(1,2)],g,.true.))
if (w(1,1)%z(1)/=1 ) print *,201
if (w(1,2)%z(1)/=2 ) print *,301
v(1,3:)= f(merge([ v(1,1),v(1,2)],g,.true.))
if (v(1,3)%z(1)/=1 ) print *,411
if (v(1,4)%z(1)/=2 ) print *,521
w=g
v(1,3:)=g
w(1,:)= f([ x(v(1,1)%z), x(v(1,2)%z)])
if (w(1,1)%z(1)/=1 ) print *,101
if (w(1,2)%z(1)/=2 ) print *,101
v(1,3:)= f([ x(v(1,1)%z), x(v(1,2)%z)])
if (v(1,3)%z(1)/=1 ) print *,111
if (v(1,4)%z(1)/=2 ) print *,121
w=g
v(1,3:)=g
w(1,:)= f([ x( [1]    ), x( [2])])
if (w(1,1)%z(1)/=1 ) print *,101
if (w(1,2)%z(1)/=2 ) print *,101
v(1,3:)= f([ x( [1]    ), x( [2])])
if (v(1,3)%z(1)/=1 ) print *,111
if (v(1,4)%z(1)/=2 ) print *,121
w=g
v(1,3:)=g
w(1,:)= f([ x( k2-k1   ), x( k1+k1)])
if (w(1,1)%z(1)/=1 ) print *,101
if (w(1,2)%z(1)/=2 ) print *,101
v(1,3:)= f([ x( k2-k1    ), x( k1+k1)])
if (v(1,3)%z(1)/=1 ) print *,111
if (v(1,4)%z(1)/=2 ) print *,121
w=g
v(1,3:)=g
w(1,:)= merge(f([ v(1,1),v(1,2)]),g,.true.)
if (w(1,1)%z(1)/=1 ) print *,201
if (w(1,2)%z(1)/=2 ) print *,301
v(1,3:)= merge(f([ v(1,1),v(1,2)]),g,.true.)
if (v(1,3)%z(1)/=1 ) print *,411
if (v(1,4)%z(1)/=2 ) print *,521
w=g
v(1,3:)=g
w(1,:)= [ f(x(v(1,1)%z)), f(x(v(1,2)%z) )]
if (w(1,1)%z(1)/=1 ) print *,101
if (w(1,2)%z(1)/=2 ) print *,101
v(1,3:)= [ f(x(v(1,1)%z)), f(x(v(1,2)%z))]
if (v(1,3)%z(1)/=1 ) print *,111
if (v(1,4)%z(1)/=2 ) print *,121
w=g
v(1,3:)=g
w(1,:)= [ f(x( [1]    )), f(x( [2]))]
if (w(1,1)%z(1)/=1 ) print *,101
if (w(1,2)%z(1)/=2 ) print *,101
v(1,3:)= [ f(x( [1])    ), f(x( [2]))]
if (v(1,3)%z(1)/=1 ) print *,111
if (v(1,4)%z(1)/=2 ) print *,121
w=g
v(1,3:)=g
w(1,:)= [ f(x( k2-k1   )), f(x( k1+k1))]
if (w(1,1)%z(1)/=1 ) print *,101
if (w(1,2)%z(1)/=2 ) print *,101
v(1,3:)= [ f(x( k2-k1    )), f(x( k1+k1))]
if (v(1,3)%z(1)/=1 ) print *,111
if (v(1,4)%z(1)/=2 ) print *,121
v(1,3:)=g
end
do k=1,30
call s1
end do
print *,'pass'
end
