module mod1
 integer,contiguous,pointer::dd(:,:)
 type tt
  character(len=3),pointer,contiguous :: aa(:,:)
 end type
end module

use mod1

type(tt) :: obj,obj2,obj3

allocate(obj%aa(5,4))

obj%aa = 'abc'
obj%aa(:,1)='xxx'
if(is_contiguous(obj%aa(:,2:)) .neqv. .true.) print*,100

allocate(obj2%aa(5,4))

obj2%aa = 'abc'
obj2%aa(:,1)='xxx'

allocate(obj3%aa(5,4))

obj3%aa = 'abc'
obj3%aa(:,1)='xxx'

if(is_contiguous(dd) .neqv. .true.) print*,301,'dd'

call sub2(obj2%aa,obj%aa(:,2:)(2:),obj3%aa)

contains
subroutine sub2(c,b,d)
character(len=3)::b(5,*),c(4,*),d(5,*)
if(all(b(:,1:3)=='abc')) print*,101
if(all(c(:,1:3)/='abc')) print*,103
if(all(d(:,1:3)/='abc')) print*,102
print*,'pass'
end subroutine
end
