subroutine s(n)
implicit none
integer::n
associate(r=>n)
block
target      :: a
character(2), dimension(2,r):: a(2,2)
target      :: b
character(r), dimension(2,2):: b(2,r)
target      :: h
character(2), dimension(2,2):: h(2,r)
target      :: c
character(2), dimension(2,2):: c(2,r)*(r)
target      :: l
character(2), dimension(2,2):: l(2,r)*(3)
target      :: d
character(r), dimension(2,2):: d(2,r)*(2)
target      :: e
character(r), dimension(2,r):: e(2,2)
target      :: m
character(3), dimension(2,r):: m(2,2)
target      :: f
character(2), dimension(2,2):: f(r,2)*(3)
target      :: g
character(r), dimension(2,r):: g(2,r)*(2)
target      :: i
integer  (2), dimension(2,r):: i(2,2)
target      :: k
integer  (2), dimension(2,2):: k(r,2)
if (len (a)/=2) print *,1001
if (size(a)/=4) print *,1002
if (len (b)/=3) print *,1003
if (size(b)/=6) print *,1004
if (len (c)/=3) print *,1005
if (size(c)/=6) print *,1006
if (len (d)/=2) print *,1007
if (size(d)/=6) print *,1008
if (len (e)/=3) print *,1009
if (size(e)/=4) print *,1010
if (len (f)/=3) print *,1011
if (size(f)/=6) print *,1012
if (len (g)/=2) print *,1013
if (size(g)/=6) print *,1014
if (len (h)/=2) print *,1015
if (size(h)/=6) print *,1016
if (size(i)/=4) print *,1018
if (size(k)/=6) print *,1019
if (len (l)/=3) print *,1020
if (size(l)/=6) print *,1021
if (len (m)/=3) print *,1022
if (size(m)/=4) print *,1023
end block
end associate
end
call s(3)

print *,'sngg608r : pass'
end

