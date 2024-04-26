integer :: trg(5)=[1,2,3,4,5]
integer::i=1
call sub(trg(1:5:1))
call sub(trg(1:5:i))
if(any(trg/= [1,2,3,4,5]))print*,"101",trg
call sub2(trg(1:5:1))
call sub2(trg(1:5:i))
if(any(trg/= [1,2,3,4,5]))print*,"101",trg
call sub3(trg(1:5:1))
call sub3(trg(1:5:i))
if(any(trg/= [11,12,13,14,15]))print*,"101",trg
call sub4(trg(1:5:1))
call sub4(trg(1:5:i))
if(any(trg/= [31,32,33,34,35]))print*,"109",trg
print*,"pass"
contains
subroutine sub(dptr)
integer,value::dptr(5)
if(loc(dptr).eq.loc(trg))print*,"102", loc(dptr), loc(trg2)
dptr = dptr + 10
end subroutine
subroutine sub2(dptr)
integer,intent(in)::dptr(5)
if(loc(dptr).ne.loc(trg))print*,"104", loc(dptr), loc(trg2)
end subroutine
subroutine sub3(dptr)
integer,intent(out)::dptr(5)
if(loc(dptr).ne.loc(trg))print*,"105", loc(dptr), loc(trg2)
dptr = [11,12,13,14,15]
end subroutine
subroutine sub4(dptr)
integer,intent(inout)::dptr(5)
if(loc(dptr).ne.loc(trg))print*,"105", loc(dptr), loc(trg2)
dptr = dptr + 10
end subroutine
end
