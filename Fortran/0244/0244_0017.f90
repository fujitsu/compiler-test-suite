module mod1
 integer,contiguous,pointer::dd(:,:)
 type tt
  integer,pointer,contiguous :: aa(:,:)
 end type
end module

use mod1
integer,target :: trg(10,10)=9

type(tt) :: obj,obj2,obj3

allocate(obj%aa(5,4))

obj%aa = 4
obj%aa(:,4)=0
if(is_contiguous(obj%aa(:,2:)) .neqv. .true.) print*,100

allocate(obj2%aa(5,4))

obj2%aa = 4
obj2%aa(:,1)=0

allocate(obj3%aa(5,4))

obj3%aa = 4
obj3%aa(:,1)=0

call sub(trg(:,:))

contains
subroutine sub(dptr)
integer,contiguous,target::dptr(:,:)

dd=>dptr

if(is_contiguous(dd) .neqv. .true.) print*,301,'dd'

call sub2(obj2%aa(2:,2:),obj%aa,obj3%aa)

end subroutine

subroutine sub2(c,b,d)
integer::b(5,*),c(4,*),d(5,*)
if(all(b(:,1:3)==4)) print*,'pass'
if(all(c(:,1:3)/=4)) print*,103
if(all(d(:,1:3)/=4)) print*,102
end subroutine
end
