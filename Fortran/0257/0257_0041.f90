integer,allocatable::trg(:)
integer::i=1
allocate(trg(5))
trg=[1,2,3,4,5]
call sub(trg(1:5:i))
if(any(trg/= [11,12,13,14,15]))print*,"101",trg
print*,"pass"
contains
subroutine sub(dptr)
integer::dptr(5)
if(loc(dptr).ne.loc(trg))print*,"102", loc(dptr), loc(trg2)
dptr = dptr + 10
end subroutine
end
