implicit none
integer::n
n=3
associate(r=>n)
block
character(2):: a
dimension a(r)
if (len (a)/=2) print *,1001
if (size(a)/=3) print *,1002
end block
end associate

print *,'sngg603r : pass'
end

