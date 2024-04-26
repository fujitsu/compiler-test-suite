integer :: trg(5)=[1,2,3,4,5]
integer::i=1
call sub(trg(1:5:i))
if(any(trg/= [31,12,33,14,35]))print*,"101",trg
print*,"pass"
contains
subroutine sub(dptr)
integer::dptr(5)
integer::k 
k=2
if(loc(dptr).ne.loc(trg))print*,"102", loc(dptr), loc(trg2)
dptr = dptr + 10
call sub2(dptr(1:5:2))
call sub2(dptr(1:5:k))
end subroutine
subroutine sub2(dptr)
integer,contiguous::dptr(:)
if(loc(dptr).eq.loc(trg))print*,"104", loc(dptr), loc(trg2)
dptr = dptr + 10
end subroutine
end
