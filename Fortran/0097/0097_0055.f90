integer,pointer::aptr(:,:,:,:)
integer,target :: trg(10,10,10,10)=3
integer,target :: trg2(10,10,10,10)=3
interface
subroutine sub(dptr)
integer,contiguous,target::dptr(:,:,:,:)
end subroutine
subroutine sub2(dptr)
integer,contiguous,target::dptr(:,:,:,:)
end subroutine
end interface
aptr=>trg2(:,:,:,1:10:1)
call sub(trg(:,:,:,1:10:1))
call sub2(aptr)
if(any(trg /= 4))print*,"102"
if(any(trg2 /= 4))print*,"103"
print*,"pass"

end
subroutine sub(dptr)

integer,contiguous,target::dptr(:,:,:,:)

dptr = 4
end subroutine
subroutine sub2(dptr)
integer,contiguous,target::dptr(:,:,:,:)

if(loc(dptr).eq.loc(trg))print*,"102"
dptr = 4
end subroutine

