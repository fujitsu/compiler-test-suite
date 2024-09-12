module m1
  type x0
    integer::y01
    integer,allocatable:: y00(:)
  end type
  type,extends(x0):: x1
    integer::y10
    integer,allocatable::y11(:)
  end type
end
subroutine s1(n)
use m1
  class(x0),allocatable::v1(:)

do kk=1,n
allocate(x1::v1(2))
allocate(v1(2)%y00(3))
v1(2)%y00(3)=20
v1(2)%y01     =21
k=1
select type(v1)
type is(x1)
 if (v1(2)%y00(3)/=20) print *,201
 if (v1(2)%y01     /=21) print *,211
 k=2
end select
if (k/=2) print *,202
end do
end
call s1(1)
print *,'pass'
end



   
