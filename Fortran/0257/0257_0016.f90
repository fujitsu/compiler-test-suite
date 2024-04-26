integer,pointer::aptr(:,:,:)
integer,target :: trg(3,3,3)=3
integer,target :: trg2(3,3,3)=3
integer::i=2
aptr=>trg(:,:,1:3:i)
call sub(trg2(:,:,1:3:i))
call sub2(aptr)
print*,"pass"
if(any(trg.ne.reshape([3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3],[3,3,3])))print*,"101"
if(any(trg2.ne.reshape([3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3],[3,3,3])))print*,"101"
contains
subroutine sub(dptr)
integer,value::dptr(3,3,2)
if(loc(dptr).eq.loc(trg2))print*,"102", loc(dptr), loc(trg2)
dptr = 4
end subroutine
subroutine sub2(dptr)
integer,value::dptr(3,3,2)
if(loc(dptr).eq.loc(trg))print*,"103", loc(dptr), loc(trg)
dptr = 4
end subroutine
end
