interface
subroutine sub3(dptr, a)
real,contiguous::dptr(:,:)
integer::a
end subroutine
subroutine sub4(dptr, a)
real,contiguous::dptr(:,:)
integer::a
end subroutine
end interface
real,pointer::aptr(:,:)
complex,target :: trg(3,3)=(10.1,20.2)
complex,target :: trg2(3,3)= (31.1,32.2)
integer::i=1
integer::q
integer:: r
q = loc(trg)
r = loc(trg2)
aptr=>trg(:,1:3:i)%re
call sub(trg2(:,1:3:i)%re)
call sub2(aptr)
i=2
if(any(trg .ne.reshape([(30.1,20.2),(30.1,20.2),(30.1,20.2),(30.1,20.2),(30.1,20.2),(30.1,20.2),(30.1,20.2),(30.1,20.2),(30.1,20.2)],[3,3])))print*,"501"
if(any(trg2.ne.reshape([(20.0,32.2),(20.0,32.2),(20.0,32.2),(20.0,32.2),(20.0,32.2),(20.0,32.2),(20.0,32.2),(20.0,32.2),(20.0,32.2)],[3,3])))print*,"501"
aptr=>trg(1:3:i,1:3:i)%re
call sub3(trg2(1:3:i,1:3:i)%re,r )
call sub4(aptr,q)
if(any(trg .ne.reshape([(80.0,20.2),(30.1,20.2),(80.0,20.2),(30.1,20.2),(30.1,20.2),(30.1,20.2),(80.0,20.2),(30.1,20.2),(80.0,20.2)],[3,3])))print*,"501"
if(any(trg2.ne.reshape([(70.0,32.2),(20.0,32.2),(70.0,32.2),(20.0,32.2),(20.0,32.2),(20.0,32.2),(70.0,32.2),(20.0,32.2),(70.0,32.2)],[3,3])))print*,"501"
print*,"pass"

contains
subroutine sub(dptr)
real,contiguous::dptr(:,:)
if(loc(dptr).eq.loc(trg2))print*,"102", loc(dptr), loc(trg2)
dptr = 20.0
end subroutine
subroutine sub2(dptr)
real,contiguous::dptr(:,:)
if(loc(dptr).eq.loc(trg))print*,"103", loc(dptr), loc(trg)
dptr = 30.1
end subroutine
end
subroutine sub3(dptr, a)
real,contiguous::dptr(:,:)
integer::a
if(loc(dptr).eq.loc(a))print*,"104", loc(dptr), a
dptr = 70.0
end subroutine
subroutine sub4(dptr,a)
real,contiguous::dptr(:,:)
integer::a
if(loc(dptr).eq.loc(a))print*,"104", loc(dptr), a
dptr = 80.0
end subroutine
