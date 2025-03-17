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
  function fun1(a) result(i)
    use mod
    type(y)::a
    integer,allocatable::i(:)
  end function
end interface
type(y)::a
integer,allocatable::j(:,:)
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

if ( any(j/=reshape((/1,2,3,4/),(/2,2/))) ) write(6,*) "NG"

print *,'pass'
end 

function fun1(a) result(i)
use mod
type(y)::a
integer,allocatable::i(:)

allocate(i(4))
i(1)=a%yy(1)%za(1)
i(2)=a%yy(1)%za(2)
i(3)=a%yy(2)%za(1)
i(4)=a%yy(2)%za(2)

end function
