integer :: trg(2:1) =1
integer::i=1
if(size(trg).ne.0)print*,"101"
call sub(trg(::i))
if(size(trg).ne.0)print*,"101"
print*,"pass"
contains
subroutine sub(dptr)
integer::dptr(1)
if(loc(dptr).ne.loc(trg))print*,"102", loc(dptr), loc(trg)
if(size(dptr).ne.1)print*,"105"
end subroutine
end
