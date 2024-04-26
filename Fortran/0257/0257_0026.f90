integer :: trg(5)=[1,2,3,4,5]
integer::i=1
call sub(trg(1:5:i))
if(any(trg/= [31,32,33,34,35]))print*,"101",trg
print*,"pass"
contains
subroutine sub(dptr)
integer::dptr(:)
integer::k 
k=1
if(loc(dptr).ne.loc(trg))print*,"102", loc(dptr), loc(trg2)
dptr = dptr + 10
call sub3(dptr(1:5:k))
call sub2(dptr(1:5:k))
end subroutine
subroutine sub2(dptr)
integer,contiguous::dptr(:)
if(loc(dptr).ne.loc(trg))print*,"104", loc(dptr), loc(trg2)
dptr = dptr + 10
end subroutine
subroutine sub3(dptr)
integer::dptr(5)
if(loc(dptr).ne.loc(trg))print*,"104", loc(dptr), loc(trg2)
dptr = dptr + 10
end subroutine
end
