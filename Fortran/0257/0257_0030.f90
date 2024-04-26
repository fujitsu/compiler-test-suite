integer :: trg(5)=[1,2,3,4,5]
integer::i=-1
call sub(trg(5:1:i))
if(any(trg/= [11,12,13,14,15]))print*,"101",trg
print*,"pass"
contains
subroutine sub(dptr)
integer::dptr(5)
if(loc(dptr).eq.loc(trg))print*,"102", loc(dptr), loc(trg)
dptr = dptr + 10
end subroutine
end
