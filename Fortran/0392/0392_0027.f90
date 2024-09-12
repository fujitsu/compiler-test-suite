subroutine s1
type x0
 integer:: x00=1
end type
type,extends(x0):: x1
  integer:: x01=2
end type
type,extends(x1):: x2
  integer:: x02=3
end type
class(x0),allocatable::p1(:,:),p2(:,:),p3(:,:),p4(:,:)
allocate(p3     ,p4     ,p1(2,2),stat=k,mold=fx2())
contains
function fx2()
class(x0),allocatable::fx2(:,:)
allocate(fx2,mold=reshape([(x2(),kkk=1,9)],[3,3]))
end function
end
call s1
print *,'pass'
end
