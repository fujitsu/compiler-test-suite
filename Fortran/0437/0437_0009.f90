MODULE m1
type xxx
integer::xxx1=10
integer::xxx2(2)=11
end type
type xx
integer::xx1=10
integer::xx2(2)=11
type(xxx):: xx3(2)
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
type (xxx):: vvv(2)
type (xx):: vv(2)
type (x):: v,va(2)
integer::q(2)=[1,2]
vvv   = xxx( 111, q )
vv   = xx( 11, q , vvv)
v= x( 1 , vv)
call sx( v )
va= x( 1 , vv)
call sx( va(1) )
call sx( va(2) )
va= x( 1 , fff(vv))
call sx( va(1) )
call sx( va(2) )
va= [(x( 1 , fff(vv)), n=1,2)]
call sx( va(1) )
call sx( va(2) )
va= ff([(x( 1 , fff(vv)), n=1,2)])
call sx( va(1) )
call sx( va(2) )
end
do k=1,30
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
call sxxx(w%xx3(1))
call sxxx(w%xx3(2))
end
subroutine sxxx(w)
use m1
type(xxx):: w
if (w%xxx1/=111)print *,2101
if (any(w%xxx2/=[1,2]))print *,2102
if (size(w%xxx2)/=2)print *,2103
end

