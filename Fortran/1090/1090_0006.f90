subroutine s(n)
implicit none
integer::n
associate(r=>n)
block
target      :: a(2,r)
character(2):: a
target      :: b(2,3)
character(r):: b
target      :: c(2,3)
character(2):: c*(r)
target      :: d(2,3)
character(r):: d*(2)
target      :: e(2,r)
character(r):: e
target      :: f(2,r)
character(2):: f*(r)
target      :: g(2,r)
character(r):: g*(2)
if (len (a)/=2) print *,1001
if (size(a)/=6) print *,1002
if (len (b)/=3) print *,1003
if (size(b)/=6) print *,1004
if (len (c)/=3) print *,1005
if (size(c)/=6) print *,1006
if (len (d)/=2) print *,1007
if (size(d)/=6) print *,1008
if (len (e)/=3) print *,1009
if (size(e)/=6) print *,1010
if (len (f)/=3) print *,1011
if (size(f)/=6) print *,1012
if (len (g)/=2) print *,1013
if (size(g)/=6) print *,1014
end block
end associate
end
call s(3)

print *,'sngg606r : pass'
end

