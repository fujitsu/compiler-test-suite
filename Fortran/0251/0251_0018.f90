call ss 

contains
subroutine ss
implicit none
integer,allocatable :: zz

Block
Integer,allocatable :: pp,qq,ww
integer :: rr
allocatable :: rr
allocate(pp)
allocate(qq,ww,rr)
allocate(zz)
pp=0
qq=24
pp=pp+1
ww=qq-pp
rr=ww-pp-pp
zz=22
if(pp==1) print*,'pass'
if(qq/=24) print*,102
if(ww/=23) print*,103
if(rr/=21) print*,104
End block

if(zz/=22) print*,101
end subroutine
end

