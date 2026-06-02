implicit none
integer::n=3
associate(r=>n)
block
target::a,b,c,d
character(r):: a*(2),b*(2),c,d*(2)
if (len (a)/=2) print *,1001
if (len (b)/=2) print *,1002
if (len (c)/=3) print *,1003
if (len (d)/=2) print *,1004
end block
end associate

print *,'sngg611r : pass'
end

