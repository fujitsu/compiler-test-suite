MODULE m1
type xx
integer::xx1=10
integer,allocatable:: xx2(:)
end type
type x
 integer:: x1=10
 type(xx),allocatable:: x2(:)
end type
contains
  ELEMENTAL FUNCTION ff( d ) RESULT( r ) 
    TYPE(x), INTENT(IN) :: d
    TYPE(x) :: r
   r=d 
  END FUNCTION
  ELEMENTAL FUNCTION fff( d ) RESULT( r ) 
    TYPE(xx), INTENT(IN) :: d
    TYPE(xx) :: r
   r=d 
  END FUNCTION
end
subroutine s1
use  m1
integer(8):: a(2)=[4,4]
integer(8)::k(2)
type (x):: v(2),w(2),c
type (xx):: vv(2)
integer:: q(2)=[1,2]
vv(2)= xx( 11, q )
call sxx( vv(2) )
vv(2)= xx( 11, q )
call sx( x( 1 , [xx( 11, q ),vv(2)]  ) ) 
v(2)= x( 1 , [vv(2) , xx( 11, q )] )
call sx( v(2) )
v(:)= x( 1 , [vv(2) , xx( 11, q )] )
call sx( v(1) )
call sx( v(2) )
v=c
v= [ x( 1 , [vv(2) , xx( 11, q )] ) , x( 1 , [vv(2) , xx( 11, q )] ) ]
call sx( v(1) )
call sx( v(2) )
v=c
w(2)= x( 1 , [vv(2) , xx( 11, q )] )
v= [ x( 1 , [vv(2) , xx( 11, q )] ) , w(2)                           ]
call sx( v(1) )
call sx( v(2) )
v=c
v= [          w(2)                   , x( 1 , [vv(2) , xx( 11, q )] ) ]
call sx( v(1) )
call sx( v(2) )
v=c
v= [          w(2)                   , w(2) ]
call sx( v(1) )
call sx( v(2) )
w(1)=w(2)
v=c
v=           w 
call sx( v(1) )
call sx( v(2) )
vv(2)= fff(xx( 11, q ))
call sxx( fff(vv(2) ))
vv(2)= fff(xx( 11, q ))
call sx( ff(x( 1 , [xx( 11, q ),vv(2)]  ) ) )
v(2)= ff(x( 1 , [vv(2) , xx( 11, q )] ))
call sx( ff(v(2) ))
v(:)= ff(x( 1 , [vv(2) , xx( 11, q )] ))
call sx( ff(v(1) ))
call sx( ff(v(2) ))
v=ff(c)
v= ff([ x( 1 , [vv(2) , xx( 11, q )] ) , x( 1 , [vv(2) , xx( 11, q )] ) ])
call sx( ff(v(1) ))
call sx( ff(v(2) ))
v=ff(c)
w(2)= ff(x( 1 , [vv(2) , xx( 11, q )] ))
v= ff([ x( 1 , [vv(2) , xx( 11, q )] ) , w(2)                           ])
call sx( ff(v(1) ))
call sx( ff(v(2) ))
v=ff(c)
v= ff([          w(2)                   , x( 1 , [vv(2) , xx( 11, q )] ) ])
call sx( ff(v(1) ))
call sx( ff(v(2) ))
v=ff(c)
v= ff([          w(2)                   , w(2) ])
call sx( ff(v(1) ))
call sx( ff(v(2) ))
w(1)=ff(w(2))
v=ff(c)
v=    ff(    w ) 
call sx( ff(v(1) ))
call sx( ff(v(2) ))
end
do k=1,100
call s1
end do
print *,'pass'
end
subroutine sx(w)
use m1
type(x):: w
if (w%x1/=1)print *,1011
if (.not.allocated( w%x2)) print *,1012
if (size(w%x2)/=2) print *,1013
call sxx(w%x2(1))
call sxx(w%x2(2))
end
subroutine sxx(w)
use m1
type(xx):: w
if (w%xx1/=11)print *,101
if (any(w%xx2/=[1,2]))print *,102
if (size(w%xx2)/=2)print *,103
end
