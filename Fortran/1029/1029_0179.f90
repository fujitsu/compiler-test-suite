module mod
  type z
    integer,allocatable::za(:)
  endtype
  type y
    type(z)::yy(2)
  end type
end module

use mod
interface
  function fun1(a) result(cc)
    use mod
    type(y)::a
    complex,allocatable::cc(:,:)
  end function
end interface
type(y)::a
complex,allocatable::j(:,:)
real,allocatable::rr(:)

allocate(j(2,2))
allocate(rr(2))
rr=(/1.0,2.0/)

if(any(reshape( &
             fun1( y((/z((/1,2/)),z((/1,2/))/)) ),(/size(rr),size(rr)/) &
               ) /= &
       reshape( &
             fun1( y((/(z((/1,2/)),k=1,2)/)) ),(/2,2/) ) &
       ) &
   .or. &
   any(reshape( &
             fun1( a=y((/z((/(m,m=1,2)/)),z((/(m,m=1,2)/))/)) ),(/2,2/) &
               ) /=&
       reshape( &
             fun1( a=y((/(z((/(m,m=1,2)/)),k=1,2)/)) ),(/size(rr),size(rr)/) ) &
      )&
   .or. &
   (rr(1).ne.1.0 .or. rr(2).ne.2.0 .or. size(rr).ne.2) &
   .or. &
   .not.(rr(1).eq.1.0 .and. rr(2).eq.2.0 .and. size(rr).eq.2) &
  ) then
  write(6,*) "NG"
else
  j=reshape( fun1( a=y((/ z((/1,2/)),z((/3,4/)) /)) ) , (/2,2/) )
endif

if ( any(j/=reshape((/(1.0,2.0),(2.0,1.0),(3.0,4.0),(4.0,3.0)/),(/2,2/))) ) &
    write(6,*) "NG"

print *,'pass'
end 

function fun1(a) result(cc)
use mod
type(y)::a
complex,allocatable::cc(:,:)

allocate(cc(2,2))
cc(1,1)=(1.0,2.0)
cc(2,1)=(2.0,1.0)
cc(1,2)=(3.0,4.0)
cc(2,2)=(4.0,3.0)

end function
