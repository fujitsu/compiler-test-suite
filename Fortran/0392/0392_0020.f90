module m1
  type x0
    integer::y01
    integer,allocatable:: y00(:,:)
  end type
  type,extends(x0):: x1
    integer::y10
    integer,allocatable::y11(:,:)
  end type
end
subroutine s1
use m1
  class(x0),allocatable::v0(:,:),v1(:,:)
allocate(v0(2,3))
allocate(v0(2,3)%y00(3,2))
v0(2,3)%y00(3,2)=10
v0(2,3)%y01     =11
k=1
select type(v0)
type is(x0)
 if (v0(2,3)%y00(3,2)/=10) print *,101
 if (v0(2,3)%y01     /=11) print *,111
 k=2
end select
if (k/=2) print *,102

allocate(x1::v1(2,3))
allocate(v1(2,3)%y00(3,2))
v1(2,3)%y00(3,2)=20
v1(2,3)%y01     =21
k=1
select type(v1)
type is(x1)
 if (v1(2,3)%y00(3,2)/=20) print *,201
 if (v1(2,3)%y01     /=21) print *,211
 k=2
end select
if (k/=2) print *,202
end
call s1
print *,'pass'
end



   
