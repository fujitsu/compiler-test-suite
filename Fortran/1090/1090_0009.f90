subroutine s(n)
implicit none
integer::n
associate(r=>n)
block
target::a
character(r):: a
target::b
character,dimension (r,r)::b
target::c
character(r):: c
target::d
integer  ,dimension (r,r)::d
target::e
character(2):: e*(r)
target::f
character(r):: f*(2)
target::g
character(r):: g(2)*(2)
if (len (a)/=3) print *,1001
if (len (b)/=1) print *,1003
if (size(b)/=9) print *,1004
if (len (c)/=3) print *,1005
if (size(d)/=9) print *,1006
if (len (e)/=3) print *,1007
if (len (f)/=2) print *,1008
if (len (g)/=2) print *,1009
if (size(g)/=2) print *,1002
a='123'
if (a/='123') print *,1107
b(r,r)='123'
if (b(3,3)/='1') print *,1108
c='123'
if (c/='123') print *,1117
d(r,r)=1
if (d(3,3)/=1) print *,1118
e='123'
if (e/='123') print *,1127
f='12'
if (f/='12') print *,1227
g(r-1)='123'
if (g(2)/='12') print *,1338
end block
end associate
end
call s(3)

print *,'sngg609r : pass'
end

