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
    integer(4),allocatable::i(:,:)
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

if((b(1)%za(1).ne.1.or.b(2)%za(1).ne.2.or.b(3)%za(1).ne.3.or.b(4)%za(1).ne.-4) &
   .and. &
   (rr(1).ne.1.0 .or. rr(2).ne.2.0 .or. size(rr).ne.-2) &
   .and. &
   all(lbound( fun1( b(vs1) ) ) == (/1,1/) ) &
   .and. &
   .not.any(ubound( fun1( b(vs2) ) ) /= (/2,2/) ) &
   .and. &
   size( fun1( b(vs2) ) )==4 &
   .and. &
   (rr(1).eq.1.0 .and. rr(2).eq.2.0 .and. size(rr).eq.2) &
  ) goto 100
  write(6,*) "NG"
100 continue

print *,'pass'
end 

function fun1(a) result(i)
use mod
type(z)::a(4)
integer,allocatable::i(:,:)

allocate(i(size(a)/2,size(a)/2))
i(1,1)=a(1)%za(1)
i(2,1)=a(2)%za(1)
i(1,2)=a(3)%za(1)
i(2,2)=a(4)%za(1)

end function
