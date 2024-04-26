integer,target::trg(3,3)=3
integer::i=1
call sub(trg(:,1:3:i))
print*,"pass"
if(any(trg /= 4))print*,"101"
contains
subroutine sub(dptr)
integer::dptr(3,3)
if(loc(dptr).ne.loc(trg))print*,"102", loc(dptr), loc(trg)
dptr = 4
end subroutine
end
