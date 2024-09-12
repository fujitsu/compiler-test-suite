module m1
 type b
   integer,pointer::b1(:,:,:)
 end type
 type,extends(b)::e
   integer,pointer::e1(:,:,:)
 end type
 type,extends(e)::x
   integer,pointer::x1(:,:,:)
 end type
end
subroutine s1
use m1
class(b),pointer::p(:,:,:)
type(b),pointer::pp(:,:,:)
integer,target::tb(4,6,8)=reshape([(n,n=1,4*6*8)],[4,6,8])
tb(1::2,1::2,1::2)=reshape([(n,n=0,4*6*8)],[4/2,6/2,8/2])
allocate(p(-2:-1,-3:-1,-4:-1),stat=k)
if (k/=0)print *,201
allocate(pp(-2:-1,-3:-1,-4:-1),stat=k)
if (k/=0)print *,201
 k=0
 p(-2,-3,-4)%b1(-2:,-3:,-4:)=>tb(1::2,1::2,1::2)
 pp(-2,-3,-4)%b1(-2:,-3:,-4:)=>tb(1::2,1::2,1::2)

write(1,*)p(-2,-3,-4)%b1(-2,-3,-4)
write(1,*)p(-2,-3,-4)%b1(-1,-3,-4)
write(1,*)p(-2,-3,-4)%b1(-2,-2,-4)
write(1,*)p(-2,-3,-4)%b1(-1,-2,-4)
write(1,*)pp(-2,-3,-4)%b1(-2,-3,-4)
write(1,*)pp(-2,-3,-4)%b1(-1,-3,-4)
write(1,*)pp(-2,-3,-4)%b1(-2,-2,-4)
write(1,*)pp(-2,-3,-4)%b1(-1,-2,-4)
call chk
end
call s1
 print*,'pass'
end
subroutine chk
rewind 1
read(1,*) k;if(k/=0) print *,101
read(1,*) k;if(k/=1) print *,102
read(1,*) k;if(k/=2) print *,103
read(1,*) k;if(k/=3) print *,104
read(1,*) k;if(k/=0) print *,101
read(1,*) k;if(k/=1) print *,102
read(1,*) k;if(k/=2) print *,103
read(1,*) k;if(k/=3) print *,104
end
