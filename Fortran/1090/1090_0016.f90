subroutine s1
implicit none
integer::n=3
associate(r=>n)
block
dimension ::a(2)
character(r):: a*(2)
dimension ::b(r)
character(r):: b*(2)
if (len (a)/=2) print *,1001
if (size (a)/=2) print *,1011
if (len (b)/=2) print *,1002
if (size (b)/=3) print *,1012
end block
end associate
end 
call s1

print *,'sngg616r : pass'
end

