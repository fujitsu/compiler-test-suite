module mod
integer ia(5,5,5)
integer,target::ibt(5,5,5)
integer,pointer::ibp(:,:,:)
 type c_t
   integer ct1
   integer ct2
 end type
 type (c_t)::ic(3,3,3)
contains
subroutine sub(j)
integer,dimension(:,:,:)::j
j=reshape((/(i,i=1,27)/),(/3,3,3/))
end subroutine
end module
use mod
i1=1;i2=2;i5=5
call sub(ia(i1:i5:i2,i1:i5:i2,i1:i5:i2))
write(110,*)ia(i1:i5:i2,i1:i5:i2,i1:i5:i2)
ibp=>ibt(i1:i5:i2,i1:i5:i2,i1:i5:i2)
call sub(ibp)
write(110,*)ibt(i1:i5:i2,i1:i5:i2,i1:i5:i2)
ic%ct2=reshape((/(i,i=1,27)/),(/3,3,3/))
call sub(ic%ct2)
write(110,*)ic%ct2
print *,'pass'
end
