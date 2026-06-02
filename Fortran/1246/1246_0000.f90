interface iii
procedure :: iii
end interface
ii=iii()
if (ii.ne.2) print *,'err'
print *,'pass'
contains
function iii()
iii=2
end
end
