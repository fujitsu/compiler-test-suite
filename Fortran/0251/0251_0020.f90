call ss 

contains
subroutine ss
implicit none
integer,allocatable :: zz(:,:)

Block
Integer,allocatable :: pp(:,:),qq(:,:),ww(:,:,:)
integer :: rr(:,:)
allocatable :: rr
allocate(pp(3,2))
allocate(qq(2,2),ww(2,2,2),rr(2,2))
allocate(zz(2,2))
pp=0
qq=24
pp=pp+1
ww=qq(1,1)-pp(1,2)
rr=ww(1,2,1)-pp(2,1)-pp(2,2)
zz=22
if(all(pp==1)) print*,'pass'
if(any(qq/=24)) print*,102
if(any(ww/=23)) print*,103
if(any(rr/=21)) print*,104
End block

if(any(zz/=22)) print*,101
end subroutine
end

