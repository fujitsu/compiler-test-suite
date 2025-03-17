module mod
  type z
    integer(4),allocatable::za(:)
  endtype
end module

use mod
interface
  function fun1(a) result(i)
    use mod
    type(z)::a(4)
    integer(4),allocatable::i(:)
  end function
end interface
type(z)::a(4),b(4)
integer(4),allocatable::j(:,:)
integer(2),allocatable::vs1(:),vs2(:)
real(4),allocatable::rr(:)

allocate(j(2,2))
allocate(rr(2))
allocate(vs1(4),vs2(4))
rr=(/1.0,2.0/)

vs1=(/2,4,1,3/)
vs2=(/4,3,2,1/)
b=(/(z((/m/)),m=1,4)/)

if((rr(1).eq.1.0 .or. rr(2).eq.2.0 .or. size(rr).eq.2) &
   .and. &
   all(reshape( &
             fun1( b(vs1) ),(/size(rr),size(rr)/) &
               ) == &
       reshape( &
             fun1( (/z((/2/)),z((/4/)),z((/1/)),z((/3/))/) ),(/2,2/) ) &
       ) &
   .and. &
   all(reshape( &
             fun1( b(vs2) ),(/2,2/) &
               ) ==&
       reshape( &
             fun1( (/(z((/m/)),m=4,1,-1)/) ),(/size(rr),size(rr)/) ) &
      )&
   .or. &
   .not.(.not.rr(1).eq.1.0 .and. .not.rr(2).eq.2.0 .and. size(rr).eq.2) &
  ) then
  j=reshape( fun1( (/z((/1/)),z((/3/)),z((/5/)),z((/7/))/) ) , (/2,2/) )
else
  write(6,*) "NG"
endif

if ( any(j/=reshape((/1,3,5,7/),(/2,2/))) ) write(6,*) "NG"

print *,'pass'
end 

function fun1(a) result(i)
use mod
type(z)::a(*)
integer,allocatable::i(:)

allocate(i(4))
i(1)=a(1)%za(1)
i(2)=a(2)%za(1)
i(3)=a(3)%za(1)
i(4)=a(4)%za(1)

end function
