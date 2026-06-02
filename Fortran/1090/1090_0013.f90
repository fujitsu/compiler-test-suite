implicit none
integer::n=3
associate(r=>n)
associate(w=>n-1)
block
target::a,b,c,d
character(w):: a*(r),b*(4),c,d*(r)
if (len (a)/=3) print *,1001
if (len (b)/=4) print *,1002
if (len (c)/=2) print *,1003
if (len (d)/=3) print *,1004
end block
end associate
end associate

print *,'sngg613r : pass'
end

