interface iii
procedure :: iii
end interface
ii=FFF(iii)
print *,'pass'
contains
function iii()
iii=2
end
function   FFF(iii)
i=iii()
if (i.ne.2) print *,'err'
FFF=1
end
end
