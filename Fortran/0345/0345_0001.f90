call test01
print *,'pass'
end

module mod
equivalence (iii1,iiii2)
equivalence (iii1,iiii2)
equivalence(i002,i083)
data i083 /1/
end

subroutine test01
use mod
if (i002.ne.1) print *,'i002->',i002
end

