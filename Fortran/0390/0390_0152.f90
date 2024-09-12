type t1
 integer,pointer::aptr(:,:,:)
end type

type tt1
 type(t1) :: cmp
end type

type(tt1) :: obj
integer,target :: trg(3,3,4)=22
obj%cmp%aptr=>trg(:,:,:)

call sub(obj%cmp%aptr)

contains
subroutine sub(dptr)
integer,target::dptr(:,:,:)

type y1
 integer,pointer::dd(:,:,:)
end type

type y2
 type(y1):: cmp
end type

type y3
 type(y2) :: cmp2
end type

type(y3) :: obj
integer,pointer::d1(:,:,:)

integer(8)::addr1

obj%cmp2%cmp%dd=>dptr(:,1:2,:)
d1=>dptr(:,1:2,:)
write(1,*) loc(d1(:,:,2))
addr1 = loc(d1(:,:,2))
call sub1(d1(:,:,2),addr1)

write(1,*) obj%cmp2%cmp%dd(:,:,2)
call sub1(obj%cmp2%cmp%dd(:,:,2),addr1)
print*,'pass'
end subroutine
subroutine sub1(dmy,addr1)
integer(8)::addr1
integer :: dmy(3,3)
write(1,*) loc(dmy)
if (addr1/=loc(dmy)) print *,1001
end subroutine
end
