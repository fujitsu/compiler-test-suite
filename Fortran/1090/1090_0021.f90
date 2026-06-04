subroutine s(n)
implicit none
integer::n
associate(r=>n)
block
dimension a(r)
character(r)::a*2
dimension b(r)
character::b*2

if (len (a)/=2) print *,1001
if (size(a)/=3) print *,1002
if (len (b)/=2) print *,1003
if (size(b)/=3) print *,1004
a='12'
if (any(a(:)/='12')) print *,1007
b(:)='123'
if (any(b(:)/='12')) print *,1008
end block
end associate
end
call s(3)

print *,'sngg621r : pass'
end

