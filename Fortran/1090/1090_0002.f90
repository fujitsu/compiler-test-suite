subroutine s(n)
implicit none
integer::n
associate(r=>n)
block
character(2):: a
dimension a(r,r)
character(r):: b
dimension b(2)
character(r):: c
dimension c(r,r)
if (len (a)/=2) print *,1001
if (size(a)/=9) print *,1002
if (len (b)/=3) print *,1003
if (size(b)/=2) print *,1004
if (len (c)/=3) print *,1005
if (size(c)/=9) print *,1006
a(r,r)='12'
if (a(3,3)/='12') print *,1007
c(r,r)='123'
if (c(3,3)/='123') print *,1008
end block
end associate
end
call s(3)

print *,'sngg601r : pass'
end

