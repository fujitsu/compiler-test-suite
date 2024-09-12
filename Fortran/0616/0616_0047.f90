interface
 function ifunc () result(irst)
  integer :: irst
 end function
end interface
procedure(ifunc), pointer :: pifunc
pifunc => ifunc
if (pifunc()/=1) print *,101
print *,'pass'
end
function ifunc() result(irst)
 integer :: irst
 irst=1
end function
