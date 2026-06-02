subroutine s1(n)
associate(r=>n)
block
character(len=len([character(r):: '1234'])):: a
character(len=3):: b*(len([character(r):: '1234']))
character(len=len([character(r):: '1234'])):: c*5
character(len=*):: d*(len([character(r):: '1234']))
if (len (a)/=2) print *,1001
if (len (b)/=2) print *,1002
if (len (c)/=5) print *,1003
if (len (d)/=2) print *,1004
end block
end associate
end
call s1(2)

print *,'sngg600r : pass'
end

