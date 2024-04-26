integer :: trg(5)=[1,2,3,4,5]
integer::i=1
call sub(trg(1:5:i))
call sub()
if(any(trg/= [51,52,53,54,55]))print*,"101",trg
print*,"pass"
contains
subroutine sub(dptr)
integer,optional::dptr(:)
integer::k 
k=1
if(present(dptr))then
if(loc(dptr).ne.loc(trg))print*,"102", loc(dptr), loc(trg2)
dptr = dptr + 10
call sub3(dptr(1:5:k))
call sub2(dptr(1:5:k))
call sub3()
call sub2()
endif
call sub3(dptr)
call sub2(dptr)
call sub3()
call sub2()
end subroutine
subroutine sub2(dptr)
integer,optional,contiguous::dptr(:)
if(present(dptr))then
if(loc(dptr).ne.loc(trg))print*,"104", loc(dptr), loc(trg2)
dptr = dptr + 10
endif
end subroutine
subroutine sub3(dptr)
integer,optional::dptr(5)
if(present(dptr))then
if(loc(dptr).ne.loc(trg))print*,"105", loc(dptr), loc(trg2)
dptr = dptr + 10
endif
end subroutine
end
