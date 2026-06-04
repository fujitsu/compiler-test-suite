subroutine s(n)
implicit none
integer::n
associate(r=>n)
block
dimension a(r)
character(r)::a*2

if (len (a)/=2) print *,1001
if (size(a)/=3) print *,1002
a='12'
if (any(a(:)(:)/='12')) print *,1007
end block
end associate
end
call s(3)

print *,'sngg622r : pass'
end

