subroutine s(n)
implicit none
integer::n
associate(r=>n)
block
character(r)::a*(r)(r)
character(r)::b*(r)(3)
character(4)::c*(r)(r)
character(4)::d*(r)(3)

if (len (a)/=3) print *,1001
if (size(a)/=3) print *,1002
a='123'
if (any(a(:)(:)/='123')) print *,1007
if (len (b)/=3) print *,1011
if (size(b)/=3) print *,1012
b='123'
if (any(b(:)(:)/='123')) print *,1017
if (len (c)/=3) print *,1021
if (size(c)/=3) print *,1022
c='123'
if (any(c(:)(:)/='123')) print *,1027
if (len (d)/=3) print *,1031
if (size(d)/=3) print *,1032
d='123'
if (any(d(:)(:)/='123')) print *,1037
end block
end associate
end
call s(3)

print *,'sngg624r : pass'
end

