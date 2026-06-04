n=2
associate(r=>n)
block
character(r):: a
if (len (a)/=2) print *,1001
end block
end associate

print *,'sngg189p : pass'
end

