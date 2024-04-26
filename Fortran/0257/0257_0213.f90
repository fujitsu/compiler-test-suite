integer,target :: trg(2:1) =1
integer,pointer::x(:)
x=>trg
if(size(trg).ne.0)print*,"101"
call sub(x(:))
call sub(x)
if(size(trg).ne.0)print*,"101"
print*,"pass"
contains
subroutine sub(dptr)
integer::dptr(1)
if(loc(dptr).ne.loc(trg))print*,"102", loc(dptr), loc(trg)
if(size(dptr).ne.1)print*,"105"
end subroutine
end
