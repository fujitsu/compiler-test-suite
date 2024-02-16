integer,target :: trg(10,10,10,10)=3
interface
subroutine sub(dptr)
integer,contiguous::dptr(:,:,:,:)

end subroutine
end interface
call sub(trg(:,:,:,:))
print*,"pass"

end
subroutine sub(dptr)

integer,contiguous::dptr(:,:,:,:)
if(loc(dptr).eq.loc(trg))print*,"101", loc(dptr), loc(trg)
end subroutine

