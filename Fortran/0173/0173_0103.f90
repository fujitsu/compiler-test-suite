MODULE m1
  TYPE :: x
    integer, ALLOCATABLE :: z(:)
  END TYPE
CONTAINS
  ELEMENTAL FUNCTION f( d ) RESULT( r )
    TYPE(x), INTENT(IN) :: d
    TYPE(x) :: r
   r=d
   r%z=d%z+1
  END FUNCTION 
END MODULE 
subroutine s1
use  m1
  IMPLICIT NONE
  TYPE(x),target :: v(6),w(1)
  type(x),pointer ::p
  integer,pointer::pz(:)
allocate(v(1)% z(1),source=1)
w(1)=  v(1) 
if (w(1)%z(1)/=1 ) print *,101
v(2)=  v(1) 
if (v(2)%z(1)/=1 ) print *,102
allocate(v(3)% z(1),source=-1)
pz=>v(3)%z
p=> v(3)
allocate(v(5)% z(-100:1),source=-1)
p=  v(5) 
if (v(3)%z(1)/=-1 ) print *,103
if (associated(pz,v(3)%z)) print *,20
pz=>v(3)%z
p=> v(3)
v(4)=  p 
if (v(4)%z(1)/=-1 ) print *,104
if (.not.associated(pz,v(3)%z)) print *,30
v(6)= f( w(1) )
if (v(6)%z(1)/=2 ) print *,105
v(6)= f( f( w(1) ) )
if (v(6)%z(1)/=3 ) print *,106
v(6)= f( v(6) )
if (v(6)%z(1)/=4) print *,107
v(6)= f( f( v(6) ) )
if (v(6)%z(1)/=6 ) print *,108
v(6)= x( w(1)%z )
if (v(6)%z(1)/=1 ) print *,109
v(6)= ff(  )
if (v(6)%z(1)/=2 ) print *,110
w(1)= ff(  )
if (w(1)%z(1)/=2 ) print *,110

contains
  FUNCTION ff(  ) RESULT( r )
    TYPE(x) :: r
   r=w(1)
   r%z=w(1)%z+1
  END FUNCTION 
end
do k=1,100
call s1
end do
call s1
print *,'pass'
end
