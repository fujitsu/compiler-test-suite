real,pointer::aptr(:,:)
complex,target :: trg(3,3)=(10.1,20.2)
complex,target :: trg2(3,3)= (31.1,32.2)
integer::i=1
aptr=>trg(:,1:3:i)%re
call sub(trg2(:,1:3:i)%re)
call sub2(aptr)
print*,"pass"
if(any(trg .ne.reshape([(30.1,20.2),(30.1,20.2),(30.1,20.2),(30.1,20.2),(30.1,20.2),(30.1,20.2),(30.1,20.2),(30.1,20.2),(30.1,20.2)],[3,3])))print*,"501"
if(any(trg2.ne.reshape([(20.0,32.2),(20.0,32.2),(20.0,32.2),(20.0,32.2),(20.0,32.2),(20.0,32.2),(20.0,32.2),(20.0,32.2),(20.0,32.2)],[3,3])))print*,"501"
contains
subroutine sub(dptr)
real::dptr(3,3)
if(loc(dptr).eq.loc(trg2))print*,"102", loc(dptr), loc(trg2)
dptr = 20.0
end subroutine
subroutine sub2(dptr)
real::dptr(3,3)
if(loc(dptr).eq.loc(trg))print*,"103", loc(dptr), loc(trg)
dptr = 30.1
end subroutine
end
