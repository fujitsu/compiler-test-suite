integer,pointer::aptr(:,:,:,:)
integer,target :: trg(10,10,10,10)=3
integer,target :: trg2(10,10,10,10)=3
integer::i=1
interface
subroutine sub(dptr)
integer,contiguous,target::dptr(:,:,:,:)
end subroutine
subroutine sub2(dptr)
integer,contiguous,target::dptr(:,:,:,:)
end subroutine
end interface
aptr=>trg2(:,:,:,2:6:i)
call sub(trg(:,:,:,2:6:i))
call sub2(aptr)
if(trg(1,1,1,1).ne.3)print*,"102"
if(trg(1,1,1,2).ne.4)print*,"103"
if(trg(1,1,1,3).ne.4)print*,"104"
if(trg(1,1,1,4).ne.4)print*,"105"
if(trg(1,1,1,5).ne.4)print*,"106"
if(trg(1,1,1,6).ne.4)print*,"107"
if(trg(1,1,1,7).ne.3)print*,"108"
if(trg2(1,1,1,1).ne.3)print*,"112"
if(trg2(1,1,1,2).ne.4)print*,"113"
if(trg2(1,1,1,3).ne.4)print*,"114"
if(trg2(1,1,1,4).ne.4)print*,"115"
if(trg2(1,1,1,5).ne.4)print*,"116"
if(trg2(1,1,1,6).ne.4)print*,"117"
if(trg2(1,1,1,7).ne.3)print*,"118"
print*,"pass"

end
subroutine sub(dptr)
integer,contiguous,target::dptr(:,:,:,:)
if(loc(dptr).eq.loc(trg2))print*,"101"
dptr = 4
end subroutine
subroutine sub2(dptr)
integer,contiguous,target::dptr(:,:,:,:)
if(loc(dptr).eq.loc(trg))print*,"102"
dptr = 4
end subroutine

