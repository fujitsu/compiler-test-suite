interface
function ifunc () result(irst)
integer :: irst
end function
end interface
procedure(ifunc), pointer :: pifunc
pifunc => ifunc
if (1.eq.2) print *,pifunc()
if (1.ne.pifunc()) print *,'err'
print *,'pass'
end
function ifunc() result(irst)
integer :: irst
irst=1
end function
