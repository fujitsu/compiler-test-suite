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
class(x0),allocatable::p1(:,:),p2(:,:),p3(:,:),p4(:,:),mold
allocate(mold,mold=x1())
allocate(p1(3,3),p2(3,3),stat=k,mold=mold)
if (any(ubound(p1)/=[3,3])) print *,301
if (any(ubound(p2)/=[3,3])) print *,302
if (k/=0) print *,311
kk=0
select type(p1)
type is (x1)
kk=2
end select
if (kk/=2) print *,320
kk=0
select type(p2)
type is (x1)
kk=2
end select
if (kk/=2) print *,330

deallocate(mold)
allocate(p3     ,p4     ,p1(2,2),stat=k,mold=fx2())
if (any(ubound(p1)/=[3,3])) print *,311
if (any(ubound(p2)/=[3,3])) print *,312
if (any(ubound(p3)/=[3,3])) print *,313
if (any(ubound(p4)/=[3,3])) print *,314
if (k==0) print *,315
kk=0
select type(p3)
type is (x2)
kk=2
end select
if (kk/=2) print *,420
kk=0
select type(p4)
type is (x2)
kk=2
end select
if (kk/=2) print *,430
kk=0
select type(p1)
type is (x1)
kk=2
end select
if (kk/=2) print *,440
kk=0
select type(p2)
type is (x1)
kk=2
end select
if (kk/=2) print *,450

contains
function fx2()
class(x0),allocatable::fx2(:,:)
allocate(fx2,mold=reshape([(x2(),kkk=1,9)],[3,3]))
if (any(ubound(fx2)/=[3,3])) print *,614
kk=0
select type(fx2)
type is (x2)
kk=2
end select
if (kk/=2) print *,650
end function
end
call s1
print *,'pass'
end
