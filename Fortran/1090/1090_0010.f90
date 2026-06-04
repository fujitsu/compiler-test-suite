implicit none
integer::n=3
associate(r=>n)
block
target::a,b,c,d
character(2):: a*(r),b*(r),c,d*(r)
if (len (a)/=3) print *,1001
if (len (b)/=3) print *,1002
if (len (c)/=2) print *,1003
if (len (d)/=3) print *,1004
end block
end associate

print *,'sngg610r : pass'
end

