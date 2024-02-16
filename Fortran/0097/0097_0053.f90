integer,pointer::aptr(:,:,:)
integer,target :: trg(3,3,3)=3
integer,target :: trg2(3,3,3)=3
integer::i=2
aptr=>trg(:,:,1:3:i)
call sub(trg2(:,:,1:3:i))
call sub2(aptr)
if(trg(1,1,2) /= 3)print*,"101",trg
if(trg(1,1,1) /= 4)print*,"102",trg
if(trg(1,1,3) /= 4)print*,"103",trg(1,1,3)
if(trg2(1,1,2) /= 3)print*,"101",trg
if(trg2(1,1,1) /= 4)print*,"102",trg
if(trg2(1,1,3) /= 4)print*,"103",trg(1,1,3)
print*,"pass"

contains
subroutine sub(dptr)
integer,contiguous::dptr(:,:,:)
if(loc(dptr).eq.loc(trg2))print*,"102", loc(dptr), loc(trg2)
dptr = 4
end subroutine
subroutine sub2(dptr)
integer,contiguous::dptr(:,:,:)
if(loc(dptr).eq.loc(trg))print*,"103", loc(dptr), loc(trg)
dptr = 4
end subroutine
end
